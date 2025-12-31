# Technical Decisions

Quick log of technical choices and why they were made.

---

## Decisions

- **Use CSS Custom Properties for color system** (2025-12-31)
  - Why: Makes theme changes easy; update once, changes everywhere

- **External script.js for IntersectionObserver** (2025-12-31)
  - Why: Keeps HTML clean; JavaScript is reusable across pages

- **CSS Grid for project layout** (2025-12-31)
  - Why: Modern responsive approach; auto-adjusts columns without media queries

- **GitHub Pages for hosting** (2025-12-31)
  - Why: Free, automatic deploys on push, integrated with repo

- **Guided learning approach over copy/paste** (2025-12-31)
  - Why: Sustainable learning; builds understanding for self-sufficiency
  - See: [reflections.html](../reflections.html)

- **MIT License** (2025-12-31)
  - Why: Allows others to learn from code while keeping attribution
  - See: [LICENSE](../LICENSE)

- **Documentation system (DECISIONS, ONBOARDING, inbox, scripts)** (2025-12-31)
  - Why: Keep context with code; makes updates part of dev loop; prevents doc rot
  - See: docs/ and notes/ folders

- **Build quick-commit.ps1 automation script** (2025-12-31)
  - Why: Reduces friction in Git workflow; encourages frequent commits; learning tool for PowerShell
  - See: [scripts/quick-commit.ps1](../scripts/quick-commit.ps1)

---

## Template for new decisions

```markdown
- **[Decision title]** (YYYY-MM-DD)
  - Why: [Brief explanation of reasoning]
  - See: [Optional link to code/docs]
```