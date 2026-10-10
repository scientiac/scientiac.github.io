const themes = {
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
  dark: "night-solis"
}

const prefersDark = (window.matchMedia && window.matchMedia('(prefers-color-scheme: dark)').matches);

let theme = localStorage.theme || (prefersDark ? defaultThemes.dark : defaultThemes.light);

const q = document.querySelector.bind(document);

function updateThemeSelector() {
  // Create selector element
  let html = `<details><summary for="showThemeSelector">theme: <span id="currentTheme">${theme}</span></summary>`;
  for (var id of Object.keys(themes)) {
    if (themes[id].length) {
      html += `<li><details${theme.split('-')[0] === id ? ' open' : ''}><summary>${id}</summary>`;
    } else {
      html += `<li><a${theme === id ? ' class="current"' : ''} data-theme-id="${id}" href="#">${id}</a></li>`;
    }
    for (var variant of themes[id]) {
      const fullId = `${id}-${variant}`;
      html += ` <li><a${theme === fullId ? ' class="current"' : ''} data-theme-id="${fullId}" href="#">${variant}</a></li>`;
    }
    if (themes[id].length) html += `</details></li>`;
  }

  html += `</details>`;

  q('#themeSelector').innerHTML = html;

  // Add event listeners for theme links
  q('#themeSelector').querySelectorAll('a[data-theme-id]').forEach(link => {
    link.addEventListener('click', (e) => {
      e.preventDefault();
      setTheme(link.getAttribute('data-theme-id'));
    });
  });

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

updateThemeSelector();
