# Copilot Instructions for Bridgeframe Toolkit

## Project Overview

**Bridgeframe** is a documentation-driven toolkit bridging IT Business Analysis (BABOK) with Public Health Analysis (CDC frameworks/methodologies). It translates terminology and workflows between these distinct domains to enable collaboration.

### Core Philosophy
- **Translational Role**: You are a "Public Health Business Analyst (PH-BA)" or "Health Informatician". You bridge the "profit/efficiency" world of IT with the "equity/outcomes" world of Public Health.
- **Dual-Framework Thinking**: Every technical output (User Story, Sprint) must map to a programmatic outcome (Intervention, Grant Objective).
- **Author Persona**: Content reflects André van Zyl's dual expertise (Epidemiologist & Data Scientist). Tone is academic yet accessible, grounded in evidence. Use **first-person voice** for personal sections (About the Author, Preface) and professional/instructional tone for toolkit content.
- **Development Tools Separation**: The tools used to *build* this toolkit (VS Code, GitHub Copilot, Quarto, Mermaid) are documented in an appendix. Do not reference these tools in the main toolkit content; the focus is the BA ↔ Public Health translation.

## CancerSurv: Running Case Study

Throughout the book, we use a single illustrative scenario: **CancerSurv**, a cloud-based cancer surveillance system. This case study is referenced in every phase chapter to demonstrate concepts with concrete examples.

### Scenario Overview
A state public health department partners with a health IT company (TechHealth Solutions) to develop **CancerSurv**, a cloud-based platform for cancer surveillance and registry operations.

**Project Context:**
- **Public Health Partner**: State Cancer Registry (part of the Department of Health)
- **Technology Partner**: TechHealth Solutions (cloud software vendor)
- **Funding Source**: CDC National Program of Cancer Registries (NPCR) grant
- **Timeline**: 18-month phased implementation
- **Scope**: Replace legacy mainframe system with modern, cloud-based solution

**Key Stakeholders:**

| Role | BA Term | PH Term |
|------|---------|---------|
| Project Sponsor | Executive Sponsor | Registry Director / State Epidemiologist |
| End Users | System Users | Cancer Registrars, Epidemiologists, Data Analysts |
| Subject Matter Experts | Business SMEs | Oncologists, Pathologists, Tumor Board Members |
| External Partners | Vendors / Integrators | Hospitals, Laboratories, Vital Records |
| Oversight Bodies | Governance Board | NPCR Program, NAACCR Standards Committee |

**System Functions:**
1. **Case Abstraction**: Registrars enter and code cancer cases (ICD-O-3, TNM staging)
2. **Data Quality**: Automated edits, duplicate detection, linkage to vital records
3. **Reporting**: Annual reports to NPCR/SEER, ad-hoc queries for researchers
4. **Analytics Dashboard**: Real-time incidence trends, geographic mapping, survival analysis
5. **Interoperability**: HL7 FHIR integration with hospital EHRs and lab systems

**Phase Examples in Book:**
- **Planning (Ch. 4)**: Needs assessment compares cancer incidence data gaps vs. CDC reporting requirements
- **Elicitation (Ch. 5)**: User stories from registrars; clinical guidelines from oncologists
- **Requirements (Ch. 6)**: Functional specs (case entry screens) and NFRs (HIPAA compliance, 99.9% uptime)
- **Design (Ch. 7)**: System architecture diagrams; CFIR implementation readiness assessment
- **Implementation (Ch. 8)**: Agile sprints mapped to grant milestones; PDSA cycles for workflow adoption
- **Evaluation (Ch. 9)**: KPIs (data completeness ≥95%) mapped to health outcomes (accurate survival statistics)

### Using the Case Study
When writing content, reference CancerSurv examples using callout boxes:

```markdown
::: {.callout-note title="CancerSurv Example"}
In the CancerSurv project, the **Business Need** (IT term) translated to the **Public Health Challenge**: "Timely, complete cancer data is essential for identifying disparities and targeting prevention resources."
:::
```

## Repository Structure

**Project Type**: Quarto Book published to GitHub Pages with MS Word download option.

```
Bridgeframe-Toolkit/
├── _quarto.yml               # Book configuration (chapters, output formats, theme)
├── _brand.yml                # Intersect Collaborations branding (colors, fonts, logo)
├── index.qmd                 # Book landing page / cover
├── preface.qmd               # Author preface (first-person voice)
├── .nojekyll                 # Tells GitHub Pages not to use Jekyll
├── .gitignore                # Excludes build outputs from version control
├── .github/
│   ├── copilot-instructions.md
│   └── workflows/
│       └── publish.yml       # GitHub Actions workflow for auto-deployment
├── assets/
│   ├── branding/
│   │   ├── logos/            # Intersect Collaborations logos
│   │   ├── icons/            # Favicon and app icons
│   │   └── templates/
│   │       └── IntersectCollab-reference-doc.docx  # Word export template
│   ├── references/
│   │   ├── references.bib    # Bibliography in BibTeX format
│   │   └── apa.csl           # Citation Style Language (APA 7th)
│   └── styles/               # Custom SCSS files (if needed beyond _brand.yml)
├── chapters/                 # Book chapters (.qmd files)
│   ├── part-foundations.qmd  # Part I: Foundations
│   ├── 01-introduction.qmd   # Why Bridgeframe exists
│   ├── 02-case-study.qmd     # CancerSurv introduction
│   ├── 03-terminology.qmd    # BA ↔ PH Dictionary
│   ├── part-process.qmd      # Part II: The BA/PH Process
│   ├── 04-planning.qmd       # Planning & Strategy / Needs Assessment
│   ├── 05-elicitation.qmd    # Elicitation & Stakeholder Engagement
│   ├── 06-requirements.qmd   # Requirements Analysis & Data Analysis
│   ├── 07-design.qmd         # Design & Solution Definition
│   ├── 08-implementation.qmd # Implementation & Project Execution
│   ├── 09-evaluation.qmd     # Evaluation & Continuous Improvement
│   ├── part-practice.qmd     # Part III: Putting It Into Practice
│   ├── 10-tools.qmd          # Tools Comparison (Commercial vs OSS/PH)
│   ├── 11-implementation-science.qmd  # CFIR and Implementation Frameworks
│   ├── part-appendices.qmd   # Appendices
│   ├── A-templates.qmd       # Templates and Checklists
│   ├── B-development-tools.qmd  # VS Code, Quarto, GitHub (for toolkit authors)
│   ├── D-workforce-development.qmd  # Building hybrid professionals and teams
│   ├── E-career-navigation.qmd  # Finding hybrid roles in the job market
│   └── C-glossary.qmd        # Complete BA ↔ PH Glossary (last appendix)
├── references.qmd            # Bibliography page
├── data/                     # Sample epidemiological datasets
│   └── cancersurv/           # CancerSurv example data
├── analysis/                 # R/Python scripts (tidyverse, survival analysis)
├── library/                  # Existing reference materials (source docs)
└── _book/                    # Generated output (in .gitignore)
```

## Book Structure

The book follows the standard BA lifecycle (aligned with BABOK) mapped to public health equivalents:

### Front Matter
- **Cover/Index**: Book title, subtitle, author
- **Preface**: Author's perspective on why this bridge is needed (first-person)

### Part I: Foundations
1. **Introduction**: The problem of domain silos; the Bridgeframe solution
2. **Meet CancerSurv**: Full case study introduction (context, stakeholders, objectives)
3. **Terminology Dictionary**: Quick-reference BA ↔ PH mapping table

### Part II: The Analysis Process
4. **Planning & Strategy** (BA) / **Needs Assessment** (PH)
5. **Elicitation** (BA) / **Stakeholder Engagement** (PH)
6. **Requirements Analysis** (BA) / **Data Analysis & Logic Models** (PH)
7. **Design & Solution Definition** (BA) / **Intervention Design** (PH)
8. **Implementation** (BA) / **Program Execution & PDSA** (PH)
9. **Evaluation** (BA) / **Program Evaluation & QI** (PH)

### Part III: Putting It Into Practice
10. **Tools Comparison**: Commercial vs Open Source/Public Health tools
11. **Implementation Science**: CFIR, RE-AIM, and bridging NFRs to implementation characteristics

### Appendices
- **A**: Templates and Checklists (stakeholder matrix, logic model, requirements spec)
- **B**: Development Tools (VS Code, Quarto, GitHub setup for toolkit contributors)
- **D**: Workforce Development (building hybrid professionals and teams)
- **E**: Career Navigation (finding hybrid roles, RFP search strategies, job boards)
- **C**: Complete Glossary (always last appendix)

### Back Matter
- **References**: Full bibliography

## Branding Configuration

The book uses Intersect Collaborations branding via `_brand.yml` for unified appearance across HTML and downloadable formats.

### Brand File Location
Place `_brand.yml` in the repository root (alongside `_quarto.yml`). Quarto automatically detects and applies it.

### Brand Elements

**Color Palette** (extracted from company logo):
```yaml
# _brand.yml
meta:
  name: Intersect Collaborations
  link: https://intersectcollaborations.com

color:
  palette:
    # Primary brand colors (from logo)
    blue: "#2494f7"           # Bright blue - main brand color (Intersect text, icon)
    teal: "#00a4bb"           # Teal/cyan - accent color (Version 2 elements)
    navy: "#01272f"           # Dark teal/navy - dark backgrounds
    dark: "#020506"           # Near black - text on light backgrounds
    slate: "#204d70"          # Dark blue - secondary text (Collaborations LLC)
    ivory: "#fffff0"          # Off-white - text on dark backgrounds
    white: "#ffffff"          # Pure white - light backgrounds
  
  # Semantic color mappings
  foreground: dark
  background: white
  primary: blue
  secondary: teal
  
  # For dark mode support
  # foreground:
  #   light: dark
  #   dark: ivory
  # background:
  #   light: white
  #   dark: navy

logo:
  small: assets/branding/icons/favicon.png
  medium: assets/branding/logos/intersect-logo.png

typography:
  fonts:
    - family: "Inter"
      source: google
    - family: "Fira Code"
      source: google
  base: "Inter"
  headings:
    family: "Inter"
    weight: 800
  monospace: "Fira Code"
```

### Supported Formats
- **HTML**: Full brand support (colors, fonts, logo in navbar)
- **MS Word (docx)**: Uses `IntersectCollab-reference-doc.docx` as reference document for styles
- **PDF (typst)**: Brand colors and fonts applied

### Logo Files Required
Place in `assets/branding/`:
- `logos/intersect-logo.png`: Main logo for navbar/title page
- `icons/favicon.png`: Browser tab icon (small, square)
- `icons/favicon.ico`: ICO format for broader compatibility

## Publishing to GitHub Pages

The book is published to GitHub Pages via GitHub Actions using `quarto publish`.

### Output Configuration
The book renders to:
1. **HTML Website**: Primary format, hosted on GitHub Pages
2. **MS Word Download**: Single `.docx` file available as download link

### _quarto.yml Configuration

```yaml
project:
  type: book
  output-dir: _book

book:
  title: "Bridgeframe"
  subtitle: "Bridging Business Analysis and Public Health"
  author: "André van Zyl"
  date: last-modified
  date-format: "MMMM YYYY"
  
  chapters:
    - index.qmd
    - preface.qmd
    - part: "Foundations"
      chapters:
        - chapters/01-introduction.qmd
        - chapters/02-case-study.qmd
        - chapters/03-terminology.qmd
    - part: "The Analysis Process"
      chapters:
        - chapters/04-planning.qmd
        - chapters/05-elicitation.qmd
        - chapters/06-requirements.qmd
        - chapters/07-design.qmd
        - chapters/08-implementation.qmd
        - chapters/09-evaluation.qmd
    - part: "Putting It Into Practice"
      chapters:
        - chapters/10-tools.qmd
        - chapters/11-implementation-science.qmd
    - part: "Appendices"
      chapters:
        - chapters/A-templates.qmd
        - chapters/B-development-tools.qmd
        - chapters/C-glossary.qmd
    - references.qmd
  
  downloads:
    - docx
  
  sidebar:
    search: true
  
  repo-url: https://github.com/andre-inter-collab-llc/Bridgeframe-Toolkit
  repo-actions: [edit, issue]

bibliography: assets/references/references.bib
csl: assets/references/apa.csl

execute:
  freeze: auto

format:
  html:
    theme:
      - brand
      - assets/styles/custom.scss
    toc: true
    toc-depth: 3
    number-sections: true
    code-fold: true
    code-tools: true
  
  docx:
    reference-doc: assets/branding/templates/IntersectCollab-reference-doc.docx
    toc: true
    number-sections: true
```

### GitHub Actions Workflow

Create `.github/workflows/publish.yml`:

```yaml
on:
  workflow_dispatch:
  push:
    branches: main

name: Quarto Publish

jobs:
  build-deploy:
    runs-on: ubuntu-latest
    permissions:
      contents: write
    steps:
      - name: Check out repository
        uses: actions/checkout@v4

      - name: Set up Quarto
        uses: quarto-dev/quarto-actions/setup@v2

      - name: Render and Publish
        uses: quarto-dev/quarto-actions/publish@v2
        with:
          target: gh-pages
        env:
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
```

### Initial Setup Steps
1. Create `.nojekyll` file in repository root (empty file)
2. Run `quarto publish gh-pages` locally once to create `_publish.yml`
3. Ensure repository Settings → Actions → Workflow permissions = "Read and write permissions"
4. Push all files including `_publish.yml` and `_freeze/` directory
5. Verify Settings → Pages shows `gh-pages` branch as source

### Key Files for Publishing
- `.nojekyll`: Prevents GitHub from processing with Jekyll
- `.github/workflows/publish.yml`: GitHub Actions workflow
- `_publish.yml`: Created by first `quarto publish` run
- `_freeze/`: Stores computation results (commit to version control)

## Content Patterns & Mappings

### Dictionary: BA <-> Public Health
Use strict terminology mapping. When discussing one, reference the other if helpful for context.

#### Core Process Mapping

| BA / BABOK Phase | Public Health Equivalent | Key Activities |
| :--- | :--- | :--- |
| **Strategy Analysis** | **Community Health Assessment** | Define the problem using epi data vs business metrics |
| **Requirements Analysis** | **Data Analysis & Logic Models** | Model processes, define indicators |
| **Solution Evaluation** | **Program Evaluation (CDC Framework)** | Measure outcomes against targets |
| **Change Management** | **Implementation Science** | CFIR, RE-AIM for adoption barriers |

#### Terminology Translation

| BA / Agile Term | Public Health Equivalent | Context / Nuance |
| :--- | :--- | :--- |
| **User Story** | **Service-User Scenario** / **GPS Format** | GPS = "Given [context], the Person [role] Should [action]" for clinical settings |
| **Epic** | **Grant Objective** / **Program Goal** | High-level outcome (e.g., "Reduce TB by 10%"). |
| **Business Need/Case** | **Public Health Challenge** / **Health Need** | "Driver for change" is Health Equity or Social Determinants. |
| **Stakeholder** | **Interest Holder** / **Community Partner** / **Rights Holder** | See note on terminology below. PH prefers: Affected Parties, Beneficiaries, Constituents, Key Informants, Knowledge Users. |
| **Sprint** | **PDSA Cycle** / **Adaptive Management** | Cyclic improvement: Plan-Do-Study-Act. |
| **Requirements** | **Program Protocols** / **Clinical Guidelines** | Business rules are legally/clinically mandated. |
| **NFRs** (Non-Functional) | **Implementation Characteristics** (CFIR) | Scalability = Outbreak Resilience; Security = HIPAA/Trust. |
| **Current State Analysis** | **Epidemiological Baseline** | Document existing conditions (disease incidence, service gaps) |
| **Future State / Vision** | **Program Goals & Intended Outcomes** | Define success via improved health indicators |
| **Constraints / Assumptions** | **Social Determinants / Policy Constraints** | Funding, laws, equity (HIPAA, cultural barriers) |
| **Process Model (BPMN)** | **Intervention Flowchart / Logic Model** | Visualize Inputs → Activities → Outputs → Outcomes |
| **Data Model / Schema** | **Case Definition / Data Dictionary** | ER diagrams vs epidemiological case criteria |
| **Use Case Diagram** | **Patient Journey Map** | UML vs mapping patient experience |
| **Risk Analysis** | **Community Risk Assessment** | Standard RA vs PH frameworks (CFIR, RE-AIM) |
| **Prototype / Mockup** | **Pilot Study / Field Test** | Software wireframe vs PH intervention pilot |
| **Acceptance Test Plan** | **Evaluation Protocol** | Test cases vs data collection & analysis plan |
| **KPI** | **Health Indicator** | "15% more customer satisfaction" vs "10% reduction in infection rate" |
| **Quality Assurance** | **Quality Improvement (QI)** | Systematic checks, PDSA cycles |
| **Lessons Learned** | **After-Action Review** | Retrospective analysis, sharing successes and gaps |
| **Bug / Defect** | **Adverse Event / Variance** | System error vs deviation from expected health outcome |
| **Backlog** | **Workplan / Action Items** | Prioritized list of features vs outreach tasks |

**A Note on "Stakeholder" Terminology**: While "stakeholder" is standard in BA/Agile contexts (and used throughout this book for that reason), it carries colonial connotations in public health settings, evoking land claims and power imbalances. The term can also imply ambiguous "interest" rather than defined roles or rights, potentially disempowering Indigenous peoples and marginalized communities. In public health contexts, prefer more specific alternatives:

- **General Use**: Interest Holders, Parties/Affected Parties, Beneficiaries, Actants
- **Action-Oriented**: Constituents, Key Informants, Knowledge Users, Rights Holders

When writing for mixed audiences, acknowledge both terms; when writing for public health audiences exclusively, favor the alternatives.

### Alternative User Story Formats for Public Health
The standard "As a [user], I want [feature], so that [benefit]" often fails in clinical contexts. Use these alternatives:

1. **GPS (Given-Person-Should)**: "Given [clinical context], the [health worker role] should [specific action] to [health outcome]."
   - Example: "Given a positive TB test result, the contact tracer should initiate household investigation within 48 hours to prevent secondary transmission."

2. **Service-User Scenario**: Narrative vignette describing a patient's journey through the system.
   - Example: "Maria, a 45-year-old farmworker, visits a mobile clinic for diabetes screening..."

3. **Situational Protocol**: Context-specific workflow tied to clinical guidelines.
   - Example: "When a lab reports a confirmed measles case, the system shall generate a contact list and notify the epidemiologist within 4 hours."

### Implementation Science (CFIR)
When defining requirements, apply **Implementation Science** principles (specifically CFIR) to anticipate adoption barriers:

**CFIR Domains Mapped to NFRs:**

| CFIR Domain | NFR Category | Example Requirement |
| :--- | :--- | :--- |
| **Intervention Characteristics** | Usability, Complexity | "The system shall complete case entry in < 5 clicks" |
| **Outer Setting** | Compliance, Interoperability | "The system shall submit data to NPCR in CDC-specified XML format" |
| **Inner Setting** | Infrastructure, Training | "The system shall function on Windows 10 machines with 4GB RAM" |
| **Characteristics of Individuals** | Accessibility, Localization | "The interface shall support Spanish language toggle" |
| **Process** | Auditability, Reporting | "The system shall log all user actions for compliance review" |

**Key CFIR Constructs for BA:**
- **Relative Advantage**: How much better is this than the current system? Quantify in requirements.
- **Adaptability**: Can the intervention be modified for local context without losing fidelity?
- **Complexity**: How many steps/integrations are required? Simpler = higher adoption.
- **Implementation Climate**: Is the organization ready? Assess via readiness surveys.
- **Available Resources**: Does the clinic have the hardware, bandwidth, and staff?

### The "Double-Loop" of Agile in Public Health
Standard Agile focuses on "Build-Measure-Learn" for product improvement. Public health adds a second loop: **Surveillance-Intervention-Evaluation**.

- **Loop 1 (Agile)**: Sprint → Demo → Retrospective → Next Sprint
- **Loop 2 (PH)**: Data Collection → Analysis → Intervention → Outcome Measurement

The BA must ensure both loops are synchronized: software releases should align with epidemiological reporting cycles.

### Domain-Specific Applications

#### Disease Surveillance Systems (NEDSS/ESSENCE)
- **Case Definitions**: A "case" is not just a database record; it is a clinical entity defined by specific criteria (symptoms + lab results). Requirements must support "flexible case definitions" that change as pathogens evolve.
- **Deduplication**: Critical business problem is "Identity Resolution." Define requirements for deterministic and probabilistic matching algorithms.
- **Electronic Lab Reporting (ELR)**: Handle high volumes of automated data. Specify parsing of HL7 messages and mapping of SNOMED (diagnosis) and LOINC (test) codes.

#### Immunization Information Systems (IIS)
- Governed by **CDC Functional Standards v4.1**. BAs validate against these, not from scratch.
- Core Functions: Vaccine Inventory Management (VFC eligibility, lot numbers), Clinical Decision Support (forecasting next dose per ACIP schedules), Reminder/Recall systems.

#### WIC Modernization
- **EBT & Online Services**: Moving from paper vouchers to Electronic Benefit Transfer cards.
- **Offline Capability**: Critical NFR for rural clinics without reliable internet.
- **Participant-Centered Design**: Balance "Program Integrity" (fraud prevention) with "Participant Experience" (reducing burden).

### Citation Style
Leverage the Quarto bibliography system configured in `_quarto.yml`:
- **Format**: Use standard Pandoc citation syntax: `[@citationKey]` or `@citationKey`.
- **Source**: Keys must match entries in `assets/references/references.bib`.
- **Legacy**: Older files may use `[\[#\]]` notation; prefer updating these to `@key` format when editing.

## Technical Standards

### Diagrams (Mermaid)
- **Logic Models**: Use `flowchart LR` for Inputs -> Activities -> Outputs -> Outcomes.
- **Process Flows**: Use `graph TD` for system or patient flows.

### Code (R & Data Science)
- **Style**: Modern `tidyverse` conventions.
- **Packages**: `ggplot2` for viz, `survival` for time-to-event, `here` for paths.
- **Context**: Use epidemiological examples (incidence rates, epidemic curves) over business sales data.

### Tool Ecosystems
Always present a **Commercial vs. Open Source/Public Health** paired option. Public health agencies often have tight budgets; OSS options provide data sovereignty and lower TCO.

#### Comprehensive Tool Comparison

| Category | Commercial / Enterprise | Open Source / Public Health | Notes |
| :--- | :--- | :--- | :--- |
| **Project Management** | Jira, Azure DevOps, MS Project | OpenProject, Redmine, Taiga, Trello (free tier) | OSS requires more technical configuration but offers data sovereignty |
| **Requirements/Docs** | Confluence, Jama, SharePoint | GitHub Issues, GitLab, BookStack, MediaWiki | GitHub Issues sufficient for small teams |
| **Diagramming** | Visio, Lucidchart | diagrams.net (draw.io), Mermaid | diagrams.net is the de facto standard in public sector |
| **Data Collection** | Microsoft Forms, Qualtrics | REDCap, DHIS2, KoBoToolbox, ODK | REDCap is ubiquitous in public health research (HIPAA, 21 CFR Part 11 compliant) |
| **Data Analysis** | SAS, SPSS, Stata | R (tidyverse), Python (pandas), Epi Info | Epi Info is CDC-developed for outbreak investigation |
| **Visualization** | Tableau, Power BI | R Shiny, Plotly, ggplot2, QGIS | QGIS essential for spatial epidemiology |
| **GIS/Mapping** | ArcGIS, Mapbox | QGIS, Leaflet, R (sf package) | QGIS widely used for disease mapping |
| **Cloud/Data Platform** | Azure Data Factory, Databricks, Palantir Foundry | On-prem PostgreSQL, Apache Airflow, dbt | Balance cloud benefits vs data sovereignty concerns |
| **Version Control** | Azure Repos, Bitbucket | GitHub, GitLab | GitHub Actions for automated report rendering |

#### Data Standards (Non-Negotiable)
These are primary business requirements, not "technical details" to defer:
- **HL7**: Standard for messaging between systems. BAs must define trigger events (e.g., "ADT A01, Admit Patient").
- **FHIR (Fast Healthcare Interoperability Resources)**: Modern, API-based standard. Understand FHIR "Resources" (Patient, Observation) to specify API requirements.
- **USCDI (U.S. Core Data for Interoperability)**: Standardized health data classes required for federal ONC certification.
- **ICD-10/ICD-O-3**: Diagnosis and oncology coding standards.
- **SNOMED CT**: Clinical terminology for diagnoses.
- **LOINC**: Lab test coding standard.

#### When to Recommend Which Tool
- **REDCap** over Salesforce: For research studies requiring compliance (HIPAA, 21 CFR Part 11)
- **Epi Info** over Excel: For rapid outbreak investigation with built-in epi statistics (odds ratios, epi curves)
- **DHIS2**: For large-scale health program data management (used globally by WHO)
- **QGIS** over ArcGIS: When budget is constrained but spatial analysis is critical

## Workforce Development Resources

The demand for professionals who bridge business analysis and public health has spurred new training initiatives. Reference these when discussing career paths or team capacity building.

### Training Programs
- **PHIT (Public Health Informatics & Technology) Workforce Development Program**: ONC-funded program training diverse workforce in this hybrid domain. Emphasizes recruiting from underrepresented communities.
- **AMIA 10x10**: American Medical Informatics Association offers intensive courses providing deep dive into health informatics. Ideal "bootcamp" for BAs needing clinical context.
- **CDC TRAIN**: Free courses including "Introduction to Public Health Informatics" explaining agency context and terminology. Essential low-barrier training for any BA entering the sector.

### Academic Pathways
- **Public Health Informatics Specializations**: Johns Hopkins (Coursera), UCSF (edX)
- **Implementation Science Certificates**: Cover theoretical underpinnings of CFIR, RE-AIM
- **Health IT Certifications**: CAHIMS, CPHIMS from HIMSS

### Key Competencies for the Public Health BA
1. **Dual-Framework Thinking**: Map every Agile artifact to a Logic Model outcome
2. **Interoperability Literacy**: Treat HL7/FHIR/USCDI as primary requirements
3. **Implementation Science Application**: Use CFIR to document non-technical barriers as Transition Requirements
4. **Frontline Validation**: Use "Gemba walks" and "day-in-the-life" scenarios to gather requirements from field staff
5. **Federal Standards Knowledge**: Leverage CDC Functional Standards (IIS), CMS requirements, ONC certification criteria

## Document Configuration & Output Standards

- **Configuration**: `_quarto.yml` is the source of truth for output settings (TOC, theme, bibliography).
- **Dual-Target Output**: All content must render effectively to both:
  - **HTML Website**: Interactive, navigable.
  - **MS Word (`.docx`)**: Professional styling using `assets/branding/templates/IntersectCollab-reference-doc.docx`.
- **File Types**: Prefer `.qmd` for all new documentation to support code execution and citations.
- **CV**: `CV_Andre_van_Zyl.md` uses specialized Quarto frontmatter for multi-format export; preserve completely.
- **Diagrams**: Use Mermaid (text-based) to ensure compatibility across HTML and Word outputs (Quarto renders these as images in docx).

### Formatting Standards

- **YAML Frontmatter**: Every `.qmd` file must begin with YAML frontmatter containing at minimum a `title` field:
  ```yaml
  ---
  title: "Page Title Here"
  ---
  ```
- **Heading Hierarchy**: The first content heading in each document must use a single `#` (Heading 1). Do not manually number headings. Quarto's `number-sections: true` setting handles automatic numbering for HTML output, and MS Word uses the reference document's automatic heading numbering.
- **No Dashes for Punctuation**: Never use em dashes (—) or en dashes (–) in content. Do not replace them with hyphens (-) either. Instead, rewrite sentences to use commas, colons, semicolons, or parentheses. This is a strict stylistic preference for consistency and readability.
- **Auto-Generated Files**: `search.json` in `_book/` is automatically generated by Quarto for website search functionality and should not be manually edited.

### Hyperlinks and External References

When mentioning organizations, companies, tools, job boards, or other external resources, **include hyperlinks** to the relevant websites. This improves the reader experience and provides actionable resources.

**Hyperlink guidelines:**
- **Companies and Organizations**: Link to their careers page when discussing employment opportunities (e.g., `[Deloitte](https://www2.deloitte.com/us/en/careers/careers.html)`). Link to the main website when discussing the organization in general contexts.
- **Job Boards and Platforms**: Always link to the platform URL (e.g., `[USAJobs.gov](https://www.usajobs.gov/)`).
- **Government Programs and Fellowships**: Link to the official program page (e.g., `[CDC PHIFP](https://www.cdc.gov/phifp/)`).
- **Professional Associations**: Link to the organization's main site or careers page as appropriate (e.g., `[AMIA](https://www.amia.org/)`, `[CSTE](https://www.cste.org/)`).
- **Tools and Software**: Link to the product or documentation page when first mentioned in a chapter.
- **Standards and Frameworks**: Link to the authoritative source (e.g., HL7 to hl7.org, FHIR to hl7.org/fhir).

**Format**: Use standard Markdown link syntax: `[Display Text](URL)`. Ensure links are functional and point to stable, authoritative URLs. Prefer HTTPS URLs.

**Maintenance**: When updating content, verify that existing hyperlinks remain valid. Broken links should be updated or removed.

### Glossary Maintenance

When creating or updating chapters, **always update the glossary** (`chapters/C-glossary.qmd`) to include any new domain-specific terms introduced in the content. The glossary serves as the canonical reference for BA ↔ PH terminology mapping.

**For each new term, include:**
- The term in bold with its domain context (e.g., `(BA)`, `(PH)`, `(Both)`, `(Workforce)`, `(CFIR)`)
- A definition list entry (`: ` syntax) with clear explanation
- Cross-domain equivalent where applicable (e.g., `**PH equivalent**: ...`)

**Term categories to watch for:**
- BA/Agile terms (User Story, Sprint, Backlog)
- Public Health terms (Logic Model, PDSA, Surveillance)
- Implementation Science terms (CFIR constructs, RE-AIM dimensions)
- Workforce/Career terms (Bridge Role, Systems Integrator, RFP)
- Certifications and Programs (PHIFP, CAHIMS, PHIT)

**Glossary organization:** Terms are alphabetized within lettered sections. When adding terms, insert them in the correct alphabetical position within the appropriate section.

## Content Synthesis & Social Media

This toolkit generates content for LinkedIn and professional networks. When synthesizing work for social media:
- **Objective**: Establish André van Zyl/Intersect Collaborations as the bridge between "Tech Efficiency" and "Health Equity".
- **Hook**: Highlight a common friction point (e.g., "Why 'User Stories' fail in Clinical Settings").
- **Solution**: Present the **Bridgeframe** mapping as the translation key.
- **Tone**: Authoritative, insightful, accessible. "Thought Leader" voice.
- **Format**: Short paragraphs, punchy bullet points, and relevant hashtags (#PublicHealthData #HealthInformatics #BusinessAnalysis #Bridgeframe).
