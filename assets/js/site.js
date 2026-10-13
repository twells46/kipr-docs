const siteNavigation = document.querySelector(".site-nav");

if (siteNavigation) {
  const storageKey = "kipr-docs-site-navigation-open";
  // Matches the width at which the sidebar sits beside the article in site.css.
  const wideLayout = window.matchMedia("(min-width: 62rem)");

  let stored = null;

  try {
    stored = localStorage.getItem(storageKey);
  } catch {
    // Fall back to the layout default when storage is unavailable.
  }

  // Open beside the article on wide screens, collapsed above it on narrow ones,
  // unless the reader has chosen otherwise.
  siteNavigation.open = stored === null ? wideLayout.matches : stored === "true";

  // Only the reader's own toggles are stored, not the initial state set above.
  let toggledByReader = false;

  siteNavigation.querySelector("summary").addEventListener("click", () => {
    toggledByReader = true;
  });

  siteNavigation.addEventListener("toggle", () => {
    if (!toggledByReader) {
      return;
    }

    try {
      localStorage.setItem(storageKey, String(siteNavigation.open));
    } catch {
      // The native disclosure remains usable when storage is unavailable.
    }
  });
}
