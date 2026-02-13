# Bridgeframe: Bridging Business Analysis and Public Health

[![Quarto Publish](https://github.com/andre-inter-collab-llc/Bridgeframe-Toolkit/actions/workflows/publish.yml/badge.svg)](https://github.com/andre-inter-collab-llc/Bridgeframe-Toolkit/actions/workflows/publish.yml)

**Bridgeframe** is a documentation-driven toolkit that bridges IT Business Analysis (BABOK) with Public Health Analysis (CDC frameworks and methodologies). It translates terminology, workflows, and frameworks between these distinct professional domains to enable effective collaboration on health information systems.

> 📖 **Read the book online**: [Bridgeframe Toolkit on GitHub Pages](https://andre-inter-collab-llc.github.io/Bridgeframe-Toolkit/)

## The Problem

Two disciplines. Two languages. One shared goal: building systems that improve health outcomes.

**Business analysts** speak of user stories, sprints, and requirements traceability. **Public health professionals** speak of logic models, PDSA cycles, and program evaluation. Both are trying to define problems, design solutions, and measure success, yet their terminology creates friction rather than collaboration.

## The Solution

Bridgeframe provides:

- **A terminology dictionary** mapping IT/Agile concepts to their public health equivalents
- **Phase-by-phase guidance** aligning the BABOK lifecycle with CDC frameworks
- **A running case study** (CancerSurv, a fictitious cloud-based cancer surveillance system) demonstrating concepts in practice
- **Templates and tools** for hybrid teams
- **Implementation science integration** connecting CFIR domains to non-functional requirements

## Who This Is For

- **IT Business Analysts** entering the public health sector
- **Public Health Informaticians** collaborating with software vendors
- **Project Managers** overseeing health IT implementations
- **Data Scientists** working with epidemiological systems
- **Students** in health informatics or public health programs

## Book Structure

| Part | Chapters | Description |
|:-----|:---------|:------------|
| **Foundations** | Introduction, CancerSurv Case Study, Terminology Dictionary | Core concepts and the BA ↔ PH translation layer |
| **The Analysis Process** | Planning, Elicitation, Requirements, Design, Implementation, Evaluation | Phase-by-phase guidance mapping BABOK to CDC frameworks |
| **Putting It Into Practice** | Tools Comparison, Implementation Science, Process Optimization, Automation & Intake | Applied methods, tools, and workflow patterns |
| **Appendices** | Templates, Development Tools, Workforce Development, Career Navigation, Glossary | Reference materials and career guidance |

## Technology Stack

This project is built as a [Quarto](https://quarto.org/) book and published to GitHub Pages.

| Tool | Purpose |
|:-----|:--------|
| [Quarto](https://quarto.org/) | Book authoring and rendering (HTML + DOCX) |
| [Mermaid](https://mermaid.js.org/) | Text-based diagrams (logic models, process flows) |
| [GitHub Actions](https://github.com/features/actions) | Automated build and deployment to GitHub Pages |
| [R](https://www.r-project.org/) / [Python](https://www.python.org/) | Data analysis and visualization examples |

## Getting Started

### Prerequisites

- [Quarto CLI](https://quarto.org/docs/get-started/) (v1.4+)
- [Git](https://git-scm.com/)
- A text editor (VS Code with the [Quarto extension](https://marketplace.visualstudio.com/items?itemName=quarto.quarto) recommended)

### Local Development

1. **Clone the repository**:
   ```bash
   git clone https://github.com/andre-inter-collab-llc/Bridgeframe-Toolkit.git
   cd Bridgeframe-Toolkit
   ```

2. **Preview the book locally**:
   ```bash
   quarto preview
   ```
   This starts a local server with live reload at `http://localhost:4200`.

3. **Render the full book**:
   ```bash
   quarto render
   ```
   Output is generated in the `_book/` directory (HTML website and DOCX download).

### Publishing

Pushing to the `main` branch automatically triggers the GitHub Actions workflow, which renders and deploys the book to GitHub Pages.

## Repository Structure

```
Bridgeframe-Toolkit/
├── _quarto.yml                 # Book configuration (chapters, formats, theme)
├── _brand.yml                  # Intersect Collaborations branding (colors, fonts, logo)
├── index.qmd                   # Book landing page
├── preface.qmd                 # Author preface
├── references.qmd              # Bibliography page
├── chapters/                   # Book chapters (.qmd files)
│   ├── 01-introduction.qmd    
│   ├── 02-case-study.qmd       # CancerSurv case study
│   ├── 03-terminology.qmd      # BA ↔ PH dictionary
│   ├── 04–09-*.qmd             # Analysis process phases
│   ├── 10-tools.qmd            # Tools comparison
│   ├── 11-implementation-science.qmd
│   ├── 12-process-optimization.qmd
│   ├── 13-automation-intake.qmd
│   ├── A–E-*.qmd               # Appendices
│   └── C-glossary.qmd          # Complete glossary (always last)
├── assets/
│   ├── branding/                # Logos, icons, Word template
│   ├── references/              # Bibliography (.bib) and citation style (.csl)
│   └── styles/                  # Custom SCSS
├── communications/              # LinkedIn posts and article drafts
├── data/cancersurv/             # Sample datasets for the case study
├── analysis/                    # R/Python analysis scripts
├── library/                     # Reference source materials
└── .github/workflows/
    └── publish.yml              # GitHub Actions deployment
```

## Branding

The book uses **Intersect Collaborations** branding via `_brand.yml`, featuring:

- **Primary color**: `#2494f7` (bright blue)
- **Accent color**: `#00a4bb` (teal)
- **Typography**: Inter (body/headings), Fira Code (monospace)
- **Formats**: HTML (full brand), MS Word (via reference document template)

## Status

> ⚠️ **Work in progress.** Bridgeframe is a living document under active development. The examples throughout (including the CancerSurv case study) are illustrative and fictitious, designed to help professionals relate to common challenges in health IT projects. Feedback and contributions are welcome.

## Author

**[André van Zyl, MPH](https://www.linkedin.com/in/andre-van-zyl/)** is an epidemiologist and data science professional with close to two decades of experience spanning public health, health informatics, and technical system development. He is the founder of [Intersect Collaborations LLC](https://www.intersectcollaborations.com/), a consultancy helping public health organizations transform data systems and analytics capabilities.

## Contributing

Contributions, feedback, and suggestions are welcome. Please [open an issue](https://github.com/andre-inter-collab-llc/Bridgeframe-Toolkit/issues) to start a discussion or report a problem.

## License

All rights reserved. © André van Zyl / Intersect Collaborations LLC.
