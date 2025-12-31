# Onboarding: Adam's Space

Quick start guide to run and work on this project.

## Prerequisites
- Git installed
- Web browser
- Text editor (VS Code recommended)

## Setup (5 minutes)

1. **Clone the repository**
   ```bash
   git clone https://github.com/AdamKingswood/Adams-Space.git
   cd Adams-Space
   ```

2. **Open in VS Code**
   ```bash
   code .
   ```

3. **View the site locally**
   - Open `index.html` in your browser
   - Or use Live Server extension in VS Code

## Project Structure

```
Adams-Space/
├── index.html              # Homepage
├── who-i-am.html           # About page
├── work-and-learning.html  # Work reflections
├── projects.html           # Project showcase
├── reflections.html        # Learning reflections
├── learning-log.html       # Daily log
├── styles.css              # All styling (CSS variables system)
├── script.js               # IntersectionObserver for animations
├── assets/                 # Favicon and static assets
├── docs/                   # Documentation (you are here!)
├── scripts/                # Utility scripts
└── notes/                  # Quick captures and inbox
```

## Making Changes

1. **Create a branch** (optional for personal projects)
   ```bash
   git checkout -b feature/your-feature-name
   ```

2. **Make your changes**
   - Edit HTML, CSS, or JS files
   - Test in browser

3. **Commit and push**
   ```bash
   git add .
   git commit -m "Description of changes"
   git push
   ```

4. **Wait ~2 minutes** for GitHub Pages to rebuild

## Key Concepts

- **CSS Variables**: All colors/spacing in `:root` in styles.css
- **Reveal Animations**: `.reveal` class + IntersectionObserver in script.js
- **Active Nav**: `aria-current="page"` shows current page
- **Accessibility**: Skip links, semantic HTML, ARIA labels throughout

## Live Site
https://adamkingswood.github.io/Adams-Space/

## Quick Links
- [Technical Decisions](DECISIONS.md)
- [README](../README.md)
- [License](../LICENSE)

---

**Last updated:** 2025-12-31