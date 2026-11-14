(function () {
  try {
    const defaultThemes = {
      light: "gruvbox-light",
      dark: "night-solis"
    };

    const prefersDark = window.matchMedia('(prefers-color-scheme: dark)').matches;
    const theme = localStorage.theme || (prefersDark ? defaultThemes.dark : defaultThemes.light);

    document.documentElement.dataset.theme = theme;
    document.documentElement.classList.add('js');
  } catch (e) {}
})();
