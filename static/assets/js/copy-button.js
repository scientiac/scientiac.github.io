const copyButtonLabel = "⧉";

let blocks = document.querySelectorAll("pre");

blocks.forEach((block) => {
  if (!navigator.clipboard) return;

  block.style.position = "relative";

  // Create floating copy overlay
  let copyOverlay = document.createElement("span");
  copyOverlay.className = "copy-overlay";
  copyOverlay.innerText = copyButtonLabel;

  block.appendChild(copyOverlay);

  copyOverlay.addEventListener("click", async () => {
    await copyCode(block);

    copyOverlay.innerText = "⍻";

    setTimeout(() => {
      copyOverlay.innerText = copyButtonLabel;
    }, 2000);
  });
});

async function copyCode(block) {
  let code = block.querySelector("code");
  let text = code.innerText;

  await navigator.clipboard.writeText(text);
}
