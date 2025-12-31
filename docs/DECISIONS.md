# Technical Decisions

## Format
Each decision: `YYYY-MM-DD | Decision | Why | Link (if any)`

---

## Decisions

2025-12-31 | Use CSS Custom Properties for color system | Makes theme changes easy; update once, changes everywhere | -
2025-12-31 | External script.js for IntersectionObserver | Keeps HTML clean; JavaScript is reusable across pages | -
2025-12-31 | CSS Grid for project layout | Modern responsive approach; auto-adjusts columns without media queries | -
2025-12-31 | GitHub Pages for hosting | Free, automatic deploys on push, integrated with repo | -
2025-12-31 | Guided learning approach over copy/paste | Sustainable learning; builds understanding for self-sufficiency | See reflections.html
2025-12-31 | MIT License | Allows others to learn from code while keeping attribution | LICENSE
2025-12-31 | Documentation system (DECISIONS, ONBOARDING, inbox, scripts) | Keep context with code; makes updates part of dev loop; prevents doc rot | docs/ and notes/ folders
2025-12-31 | Build quick-commit.ps1 automation script | Reduces friction in Git workflow; encourages frequent commits; learning tool for PowerShell | scripts/quick-commit.ps1

---

## Template for new decisions
YYYY-MM-DD | [What you decided] | [Why you chose this] | [Link to PR/issue/doc]