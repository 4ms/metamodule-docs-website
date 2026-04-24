// Mirror the site-wide nav (Home / Plugins / Downloads / ...) from the
// header into the top of the primary sidebar. On phone-width viewports
// the primary sidebar is the slide-in drawer, so this puts the full
// site nav one tap away from the hamburger — the header copy is hidden
// at that size by stylesheets/extra.css.
function injectSiteNavIntoDrawer() {
  const source = document.querySelector("[data-mm-site-nav]");
  const target = document.querySelector(
    ".md-sidebar--primary .md-sidebar__inner"
  );
  if (!source || !target) return;

  const existing = target.querySelector(".mm-site-nav--drawer");
  if (existing) existing.remove();

  const clone = source.cloneNode(true);
  clone.classList.add("mm-site-nav--drawer");
  clone.removeAttribute("data-mm-site-nav");
  target.insertBefore(clone, target.firstChild);
}

if (typeof document$ !== "undefined" && document$.subscribe) {
  document$.subscribe(injectSiteNavIntoDrawer);
} else {
  document.addEventListener("DOMContentLoaded", injectSiteNavIntoDrawer);
}
