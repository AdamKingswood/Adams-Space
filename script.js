document.addEventListener("DOMContentLoaded", () => {
  const reveals = document.querySelectorAll(".reveal");
  const observer = new IntersectionObserver((entries) => {
    entries.forEach(entry => {
      if (entry.isIntersecting) {
        entry.target.classList.add("visible");
      }
    });
  }, { threshold: 0.1 });
  reveals.forEach(el => observer.observe(el));
});

// Hamburger menu toggle
document.addEventListener("DOMContentLoaded", () =>{
  const hamburger = document.querySelector(".hamburger");
  const navMenu = document.querySelector("nav ul");
  // Toggle menu when hamburger is clicked
  hamburger.addEventListener("click", () => {
    const isExpanded = hamburger.getAttribute("aria-expanded") === "true";
    hamburger.setAttribute("aria-expanded", !isExpanded);
    navMenu.classList.toggle("active");
  });
  // Close menu when clicking a nav link
  const navLinks = document.querySelectorAll("nav a");
  navLinks.forEach(link => {
    link.addEventListener("click", () => {
      navMenu.classList.remove("active");
      hamburger.setAttribute("aria-expanded", "false");
    });
  });
  // Close menu when clicking outside
  document.addEventListener("click", (e) =>{
    if (!e.target.closest("nav")){
      navMenu.classList.remove("active");
      hamburger.setAttribute("aria-expanded", "false");
    }
  });
  // Close menu when pressing Escape key
  document.addEventListener("keydown", (e) => {
    if (e.key === "Escape" && navMenu.classList.contains("active")) {
      navMenu.classList.remove("active");
      hamburger.setAttribute("aria-expanded", "false");
    }
  });
});