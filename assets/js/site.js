const siteNavigation = document.querySelector(".site-nav");

if (siteNavigation) {
  const storageKey = "kipr-docs-site-navigation-open";

  try {
    siteNavigation.open = localStorage.getItem(storageKey) === "true";
  } catch {
    // Keep the server-rendered, closed state when storage is unavailable.
  }

  siteNavigation.addEventListener("toggle", () => {
    try {
      localStorage.setItem(storageKey, String(siteNavigation.open));
    } catch {
      // The native disclosure remains usable when storage is unavailable.
    }
  });
}
