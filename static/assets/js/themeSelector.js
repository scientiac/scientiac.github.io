const favicon = `<?xml version="1.0" encoding="UTF-8"?> <svg width="256" height="256" version="1.1" viewBox="0 0 67.733 67.733" xmlns="http://www.w3.org/2000/svg"> <rect width="67.733" height="67.733" fill="#000" stroke="#0f0" stroke-width="8.4667"/> <text x="15.538762" y="53.988174" font-family="monospace" font-size="10.583px" stroke-width=".26458" word-spacing="0px" style="line-height:1.25" xml:space="preserve"><tspan x="15.538762" y="53.988174" fill="#0f0" font-family="'Liberation Mono'" font-size="61.736px" stroke-width=".26458" style="font-variant-caps:normal;font-variant-east-asian:normal;font-variant-ligatures:normal;font-variant-numeric:normal">$</tspan></text> </svg>`;

const originalFaviconColors = {
  stroke: '#000',
  fill: '#0f0'
}
const themes = {
  genre: [
    'poetic',
    'storific',
    'articalistic'
  ],
  dyslexic: [
    'light',
    'dark'
  ],
  everforest: [
    'light',
    'dark'
  ],
  gruvbox: [
    "light",
    "dark"
  ],
  night: [
    'solis',
    'spaceduck',
    'gotham',
    'dracula'
  ],
  nord: [
    'light',
    'dark'
  ],
  one: [
    'light',
    'dark'
  ],
  tokyo: [
    'night',
    'night-light'
  ],
  catppuccin: [
    'latte',
    'frappe',
    'macchiato',
    'mocha'
  ],
}
const defaultThemes = {
  light: "gruvbox-light",
  dark: "gruvbox-dark"
}
const prefersDark = (window.matchMedia && window.matchMedia('(prefers-color-scheme: dark)').matches);
let theme = localStorage.theme || (prefersDark ? defaultThemes.dark : defaultThemes.light);

document.documentElement.dataset.theme = theme;

const q = document.querySelector.bind(document);

function updateThemeSelector() {
  // Create selector element
  let html = `<details><summary for="showThemeSelector">theme: <span id="currentTheme">${theme}</span></summary>`;
  for (var id of Object.keys(themes)) {
    if (themes[id].length) {
      html += `<li><details${theme.split('-')[0] === id ? ' open' : ''}><summary>${id}</summary>`;
    } else {
      html += `<li><a${theme === id ? ' class="current"' : ''}  href="javascript:setTheme('${id}')">${id}</a></li>`;
    }
    for (var variant of themes[id]) {
      html += ` <li><a${theme === id + '-' + variant ? ' class="current"' : ''} href="javascript:setTheme('${id}-${variant}')">${variant}</a></li>`;
    }
    if (themes[id].length) html += `</details></li>`;
  }

  html += `</details>`;

  q('#themeSelector').innerHTML = html;

  // Update favicon

  // get colors
  const colors = {
    fill: getComputedStyle(q('.main-background'))['backgroundColor'],
    stroke: getComputedStyle(q('.main-background'))['color']
  }

  document.querySelector('meta[name="theme-color"]').setAttribute("content", colors.fill);

}

function setTheme(id) {
  localStorage.setItem('theme', id);
  document.documentElement.dataset.theme = id;
  theme = id;
  updateThemeSelector();
}

