# Bridgeframe: A Business–Public Health Analysis Toolkit

**Bridgeframe** is a structured toolkit bridging traditional IT business analysis practices with public health analysis methods. It follows a standard business analysis workflow (aligned with BABOK) – **Planning**, **Elicitation**, **Analysis**, **Design**, **Implementation**, and **Evaluation** – and maps each phase to its public health counterpart (e.g. community health assessment, program planning, epidemiological evaluation). The toolkit distills key terminology, frameworks, and templates from both domains into a unified guide. It emphasizes André van Zyl’s dual expertise as an epidemiologist and data‐science informatics professional[\[1\]](file://file-9km8ahyGpb3YVHZpV4N4f8#:~:text=I%27m%20a%20public%20health%20professional,technical%20solutions%20across%20diverse%20communities)[\[2\]](file://file-9km8ahyGpb3YVHZpV4N4f8#:~:text=KEY%20QUALIFICATIONS), ensuring practical communication across IT and public health teams. Throughout, we cite authoritative sources and include Quarto-ready examples (R code snippets, mermaid diagrams, templates) to make Bridgeframe immediately usable by mixed teams.

## 1\. Planning & Strategy (Needs Assessment)

**Business Analysis (IT):** In BABOK, this phase covers *Strategy Analysis* and *Planning & Monitoring*. Analysts identify the **Business Need**, perform SWOT or current-state analysis, and define the **Future State** (vision, goals) and solution options. Deliverables often include a project charter, business case, and requirements plan[\[3\]](file://file_000000003be871f5b16c9be0a840c804#:~:text=,This%20stage)[\[4\]](file://file_0000000077c871f5abda42e073996abe#:~:text=,cycle%2F%23%3A~%3Atext%3DKey%2520Activities%253A). Common tools are SWOT templates, business-case calculators, and project‐planning software (e.g. MS Project, Jira, Trello).

**Public Health:** The equivalent is the **Community Health Assessment** or *health needs assessment*. Analysts gather epidemiological data, surveillance reports, and community input to define the core health problem (e.g. rising asthma rates, low vaccination)[\[5\]](file://file_0000000077c871f5abda42e073996abe#:~:text=,health)[\[6\]](file://file_000000003be871f5b16c9be0a840c804#:~:text=,https%3A%2F%2Fwww.cdc.gov%2Fpublic). They set programmatic goals and SMART objectives (e.g. “reduce new HIV cases by 20% in 2 years”). This often appears in grant proposals or health improvement plans. Frameworks like CDC’s *Assess the Context* (from the Program Evaluation Framework) or PRECEDE-PROCEED guide these steps[\[7\]](file://file_00000000f8f071f5b3354ac9a1ea4631#:~:text=The%20first%20phase%20of%20the,6)[\[8\]](file://file_0000000077c871f5abda42e073996abe#:~:text=,plan%2C%20or%20health%20improvement%20plan).

\<table\> \<tr\>\<th\>BA Concept\</th\>\<th\>PH Concept\</th\>\<th\>Notes\</th\>\</tr\> \<tr\>\<td\>Business Need / Driver for Change\</td\>\<td\>Public Health Challenge / Health Need\</td\>\<td\>Core issue requiring intervention[\[9\]](file://file_00000000f8f071f5b3354ac9a1ea4631#:~:text=%7C%20%3A,).\</td\>\</tr\> \<tr\>\<td\>Current State (Baseline)\</td\>\<td\>Community Health Assessment / Epidemiological Analysis\</td\>\<td\>Document existing conditions (e.g. disease incidence, service gaps)[\[10\]](file://file_00000000f8f071f5b3354ac9a1ea4631#:~:text=Identification%20of%20the%20core%20issue,).\</td\>\</tr\> \<tr\>\<td\>Future State / Vision\</td\>\<td\>Program Goals and Intended Outcomes\</td\>\<td\>Define success: improved health indicators (e.g. incidence↓)[\[11\]](file://file_00000000f8f071f5b3354ac9a1ea4631#:~:text=%7C%20,)[\[8\]](file://file_0000000077c871f5abda42e073996abe#:~:text=,plan%2C%20or%20health%20improvement%20plan).\</td\>\</tr\> \<tr\>\<td\>Constraints / Assumptions\</td\>\<td\>Social Determinants / Policy Constraints\</td\>\<td\>Factors like funding, laws, equity (e.g. HIPAA, cultural barriers)[\[12\]](file://file_00000000f8f071f5b3354ac9a1ea4631#:~:text=Outcomes%2011%20,)[\[13\]](file://file_0000000077c871f5abda42e073996abe#:~:text=Key%20mappings%3A).\</td\>\</tr\> \</table\>

**Tools & Templates:** For IT, project‐planning tools (Jira, Azure DevOps, Asana) and diagramming (Lucidchart, Visio) are common[\[14\]](file://file_0000000077c871f5abda42e073996abe#:~:text=if%20the%20terminology%20differs,health%20teams%20could%20use%20these)[\[15\]](file://file_0000000077c871f5abda42e073996abe#:~:text=,use%20these%20to%20organize%20tasks). For public health, free tools like **DHIS2** (health data management), **REDCap/KoBoToolbox** (surveys), or **Excel/ODK** are used for data collection; and frameworks/logic‐model templates (e.g. Kellogg logic model) for planning. The CDC provides logic model and evaluation plan templates[\[16\]](file://file_0000000077c871f5abda42e073996abe#:~:text=,model.html%23%3A~%3Atext%3DLogic%2520mo). A Quarto-ready example could be a skeleton logic-model diagram in mermaid:

flowchart LR  
    A\[Inputs: Staff, Funding\] \--\> B\[Activities: Outreach, Vaccination Clinics\]  
    B \--\> C\[Outputs: People Vaccinated\]  
    C \--\> D\[Outcomes: Reduced Disease Rate\]

This shows how planning outputs (inputs→activities→outputs→outcomes) align between the domains[\[17\]](file://file_0000000077c871f5abda42e073996abe#:~:text=,term%20impact%20%28reduced%20disease%29%5B%5C%5B7%5C%5D%5D%28https%3A%2F%2Fwww.cdc.gov%2Fcardiovascular).

**Quarto Template:** Start a Quarto document with metadata for a “Needs Assessment” report. For example:

\---  
title: "Community Health Needs Assessment"  
author: "Bridgeframe Toolkit"  
format: html  
execute:  
  freeze: true  
\---

Include R code to load baseline data (e.g. disease incidence) and summaries. A snippet:

\`\`\`{r}  
library(tidyverse)  
health\_data \<- read\_csv("data/community\_health.csv")  
health\_data %\>% summarize(mean\_incidence \= mean(cases))

This produces tables and figures right in the report. Such reproducible reports ensure the planning phase is grounded in data.

\#\# 2\. Elicitation & Stakeholder Engagement

\*\*Business Analysis (IT):\*\* Analysts gather and document requirements by engaging \*stakeholders\* (business owners, users, IT staff, regulators). Techniques include interviews, workshops, surveys, and user-story creation\[18\]\[19\]. Common outputs are stakeholder matrices/RACI charts and \*user stories\* (e.g. “As a user, I want X so that Y”). Documentation may include use cases or process models.

\*\*Public Health:\*\* Engagement is broader: community members, healthcare providers, non-profits, policymakers, and advocacy groups are involved. Public health teams use focus groups, community forums, and key-informant interviews to capture needs. They often produce community health reports, stakeholder maps, or logic models reflecting community perspectives. In lieu of “business rules,” PH teams provide \*\*clinical guidelines\*\* or SOPs as requirements\[18\].

\<table\>  
\<tr\>\<th\>BA Term\</th\>\<th\>PH Term\</th\>\<th\>Example/Notes\</th\>\</tr\>  
\<tr\>\<td\>Stakeholder\</td\>\<td\>Community Partner (hospitals, NGOs, residents)\</td\>\<td\>Both fields identify who’s affected\[20\].\</td\>\</tr\>  
\<tr\>\<td\>User Story / Use Case\</td\>\<td\>Client Scenario / Patient Journey\</td\>\<td\>Tech “As a user…” vs PH case vignette (e.g. patient narrative)\[21\].\</td\>\</tr\>  
\<tr\>\<td\>Requirement (Functional/Non-func)\</td\>\<td\>Program Component / Protocol\</td\>\<td\>Business rules correspond to SOPs or regulatory requirements in health\[18\].\</td\>\</tr\>  
\<tr\>\<td\>Requirement Backlog\</td\>\<td\>Action Items / Workplan\</td\>\<td\>Lists of tasks (features vs outreach tasks) tracked similarly\[22\].\</td\>\</tr\>  
\</table\>

\*\*Tools:\*\* IT tools like \*\*Jira, Confluence, Miro\*\* support requirement tracking and collaboration. Public health analogues include \*\*REDCap\*\* (for survey data collection), \*\*Epi Info\*\* (statistical forms), \*\*KoBoToolbox/Qualtrics\*\* (community surveys), and mapping tools like \*\*QGIS\*\* to visualize affected areas. For stakeholder analysis, simple templates (e.g. RACI matrix in Excel) can be used in either field\[23\]\[24\].

\*\*Quarto Example:\*\* Create a stakeholder matrix table:

\`\`\`markdown  
| Stakeholder             | Role/Influence              | PH Counterpart           |  
|-------------------------|-----------------------------|--------------------------|  
| Health Dept Leader      | Project Sponsor (High)      | Health Commissioner      |  
| Primary Care Physicians | End Users / Advisors        | Community Clinicians     |  
| Patients/Advocates      | End Users / Influencers     | Community Representatives|

Generating this table in Quarto (Markdown) ensures it is version-controlled and editable.

## 3\. Requirements Analysis & Data Analysis

**Business Analysis (IT):** In this phase, analysts refine requirements: modeling processes (e.g. flowcharts, UML), conducting gap analyses, defining data models, and specifying solution requirements[\[25\]](file://file_0000000077c871f5abda42e073996abe#:~:text=,the%20solution%20meets%20the%20requirements)[\[26\]](file://file_0000000077c871f5abda42e073996abe#:~:text=,Key%20mappings). They produce detailed documents (requirements specs, process diagrams, user interface mockups) and often prototype features. Metrics (KPIs) are defined to measure success.

**Public Health:** Public health analysts analyze epidemiological data to quantify the problem and test hypotheses. They might do statistical analyses (incidence trends, risk factors) using R/SAS. They also develop **logic models or conceptual frameworks** to connect interventions to outcomes[\[17\]](file://file_0000000077c871f5abda42e073996abe#:~:text=,term%20impact%20%28reduced%20disease%29%5B%5C%5B7%5C%5D%5D%28https%3A%2F%2Fwww.cdc.gov%2Fcardiovascular). For example, they define key health indicators (disease rates, coverage percentages) and may conduct pilot studies. The output is usually analytic reports and refined intervention plans.

\<table\> \<tr\>\<th\>BA Concept\</th\>\<th\>PH Concept\</th\>\<th\>Tools\</th\>\</tr\> \<tr\>\<td\>Process Modeling (BPMN/Flowchart)\</td\>\<td\>Intervention Flowchart/Logic Model\</td\>\<td\>Visio/Lucidchart vs mermaid/R (flowchart)[\[17\]](file://file_0000000077c871f5abda42e073996abe#:~:text=,term%20impact%20%28reduced%20disease%29%5B%5C%5B7%5C%5D%5D%28https%3A%2F%2Fwww.cdc.gov%2Fcardiovascular).\</td\>\</tr\> \<tr\>\<td\>Data Model / Schema\</td\>\<td\>Case Definition / Data Dictionary\</td\>\<td\>ER diagrams vs defined epidemiological case criteria.\</td\>\</tr\> \<tr\>\<td\>Use Case Diagram\</td\>\<td\>Patient Journey Map\</td\>\<td\>UML tool vs mapping patient experience (paper or digital).\</td\>\</tr\> \<tr\>\<td\>Risk Analysis\</td\>\<td\>Community Risk Assessment\</td\>\<td\>Standard RA vs PH frameworks (CFIR, RE-AIM).\</td\>\</tr\> \</table\>

**Tools:** Common analysis tools include **Excel** or **SQL** queries for data wrangling. Public health adds specialized tools: **R (with tidyverse)**, **SAS**, **Stata**, and open epidemiology software like **Epi Info** or **OpenEpi**[\[27\]](file://file_0000000077c871f5abda42e073996abe#:~:text=,domain%20CDC%20software)[\[28\]](file://file_0000000077c871f5abda42e073996abe#:~:text=,free%29%20for%20dashboards). For visualization and dashboards, BA teams use **Tableau**, **Power BI**, or **shiny**, while PH teams likewise use **R Shiny**, **QGIS** for spatial maps, or **ggplot2** in R.

**Quarto Code Example:** Suppose we have surveillance data (surv\_data.csv) with columns date and cases. We can analyze and plot it:

\`\`\`{r}  
library(tidyverse)  
surv \<- read\_csv("data/surv\_data.csv")  
surv %\>%   
  ggplot(aes(x \= date, y \= cases)) \+  
  geom\_line() \+ labs(title="Disease Incidence Over Time")

This code chunk (in a Quarto RMarkdown) computes a time series plot of cases, a typical step in both BA (e.g. sales trends) and PH (disease trends). The result is immediately embedded in the report, ensuring reproducibility. 

\#\# 4\. Design & Solution Definition

\*\*Business Analysis (IT):\*\* With requirements set, analysts work on \*\*Solution Design\*\*: defining system architecture, database design, user interface wireframes, and test plans. They draft functional specifications and acceptance criteria\[29\]. Prototypes (wireframes or mockups) are created to validate concepts. 

\*\*Public Health:\*\* In PH this aligns with intervention or system design. For IT projects, PH stakeholders might review user interface mockups of health apps. More broadly, PH analysts design program components (curricula, guidelines, policies). They often conduct \*\*pilot tests\*\* or simulations. Terms like \*“evidence-based design”\* or behavior-change theories (Health Belief Model, CFIR framework) may guide this phase. An \*\*evaluation plan\*\* is formulated, detailing how success (health outcomes, coverage) will be measured.

\<table\>  
\<tr\>\<th\>BA Concept\</th\>\<th\>PH Concept\</th\>\<th\>Notes\</th\>\</tr\>  
\<tr\>\<td\>Prototype / Mockup\</td\>\<td\>Pilot Study / Pilot Lesson Plan\</td\>\<td\>BA wireframe vs PH field pilot\[29\].\</td\>\</tr\>  
\<tr\>\<td\>Acceptance Test Plan\</td\>\<td\>Evaluation Protocol\</td\>\<td\>Test cases vs data collection & analysis plan (who/what/when)\[30\].\</td\>\</tr\>  
\<tr\>\<td\>Solution Architecture\</td\>\<td\>Program or System Architecture\</td\>\<td\>Software modules vs health program components.\</td\>\</tr\>  
\</table\>

\*\*Visual Diagram (mermaid):\*\* A simple logic-model diagram can be drawn in text. For example:

\`\`\`mermaid  
graph TD  
    Inputs \--\> Activities  
    Activities \--\> Outputs  
    Outputs \--\> Outcomes  
    Outcomes \--\> Impact

This corresponds to both a technical flow (inputs→functions→features) and a public health logic model (funding/staff→health education→increased knowledge→reduced disease)[\[17\]](file://file_0000000077c871f5abda42e073996abe#:~:text=,term%20impact%20%28reduced%20disease%29%5B%5C%5B7%5C%5D%5D%28https%3A%2F%2Fwww.cdc.gov%2Fcardiovascular).

**Tools:** Prototyping tools like **Figma** or **Balsamiq** can be used by both fields to sketch interfaces or flyers. Requirements documentation may continue in Confluence or Word (PH might draft SOPs or manuals). Quarto itself can produce formatted requirement documents (using YAML metadata and code/markdown sections). For example, a Quarto specification could include an R data table or a mermaid diagram as shown.

## 5\. Implementation & Project Execution

**Business Analysis (IT):** During implementation, BAs often support development teams, clarify requirements, and facilitate Agile ceremonies (scrums, demos)[\[31\]](file://file_0000000077c871f5abda42e073996abe#:~:text=,the%20backlog%20as%20work%20progresses). They manage change requests and issue tracking (via Jira/DevOps). Code is developed (often in sprints) and deployed through CI/CD pipelines. BAs also coordinate User Acceptance Testing (UAT).

**Public Health:** PH projects are managed like programs. Teams use Gantt charts or work plans to track field activities (e.g. clinics, training sessions)[\[32\]](file://file_0000000077c871f5abda42e073996abe#:~:text=,simple%20spreadsheet%20or%20meeting%20notes). Communication may be through stakeholder meetings or reports. Instead of a “bug tracker,” PH teams might use meeting notes or spreadsheets to log implementation issues and follow-ups.

**Common Process Flow:** Both roles oversee work progress and ensure alignment to plan. A hybrid workflow might integrate Agile sprints (for building a dashboard) with formal project gates (for regulatory reviews). For example:

flowchart LR  
    A\[Define sprint backlog\] \--\> B\[Develop & Test Features\]  
    B \--\> C\[Review with PH stakeholders\]  
    C \--\> D\[Deploy to Staging/Production\]  
    D \--\> E\[Monitor & Gather Feedback\]  
    E \--\> F\[Iterate (next sprint or revision)\]

This flow represents a cyclic development loop (Agile) adapted for health projects (add user feedback loops).

**Tools:** IT teams use version control (Git/GitHub), CI/CD (GitHub Actions, Azure Pipelines), and IDEs. PH teams can adopt these too: using **Git** to manage data and code, GitHub for documentation, and GitHub Actions to automate report generation. Both can use task trackers like **Trello/Asana** or Atlassian tools (free for small teams)[\[14\]](file://file_0000000077c871f5abda42e073996abe#:~:text=if%20the%20terminology%20differs,health%20teams%20could%20use%20these)[\[15\]](file://file_0000000077c871f5abda42e073996abe#:~:text=,use%20these%20to%20organize%20tasks). Open-source project management like **OpenProject** or **Redmine** are also viable[\[14\]](file://file_0000000077c871f5abda42e073996abe#:~:text=if%20the%20terminology%20differs,health%20teams%20could%20use%20these)[\[15\]](file://file_0000000077c871f5abda42e073996abe#:~:text=,use%20these%20to%20organize%20tasks). For example, a GitHub Actions workflow (.github/workflows/render.yml) could automatically render Quarto documents when code is pushed:

name: Render Quarto  
on: \[push\]  
jobs:  
  build:  
    runs-on: ubuntu-latest  
    steps:  
      \- uses: actions/checkout@v2  
      \- uses: quarto-dev/quarto-actions@v2  
        with:  
          command: render

This ensures analyses and reports are reproducible and version-controlled.

## 6\. Evaluation & Continuous Improvement

**Business Analysis (IT):** After deployment, BAs perform **Solution Evaluation**: comparing outcomes to targets (KPIs), conducting retrospectives, and capturing lessons learned[\[33\]](file://file_0000000077c871f5abda42e073996abe#:~:text=6). If objectives aren’t fully met, they plan enhancements or fixes.

**Public Health:** PH uses program evaluation frameworks (CDC’s PE Framework) to assess both *process* (was implementation done as intended?) and *outcomes* (did health indicators improve?)[\[34\]](file://file_0000000077c871f5abda42e073996abe#:~:text=,program%20refinement%20or%20policy%20changes). Methods include surveys, focus groups, and statistical analysis (e.g. interrupted time series). They may run Plan–Do–Study–Act (PDSA) cycles or RE-AIM evaluations.

**Mapping:** Both domains prioritize measurable impact. Example mappings include:

* **KPI (BA)** vs **Health Indicator (PH)** – e.g. “15% more customer satisfaction” vs “10% reduction in infection rate”[\[35\]](file://file_0000000077c871f5abda42e073996abe#:~:text=,Mapping%20terms).

* **Quality Assurance (BA)** vs **Quality Improvement (PH)** – both involve systematic checks and fixes[\[36\]](file://file_0000000077c871f5abda42e073996abe#:~:text=,%E2%80%9D).

* **Lessons Learned / Retrospective** vs **After-Action Review** – sharing successes and gaps[\[37\]](file://file_0000000077c871f5abda42e073996abe#:~:text=,conference%20presentation%20on%20best%20practices).

Both teams document findings and adjust strategy accordingly (e.g. updating user stories or intervention plans based on evidence).

## Tools & Resources

The table below lists example tools for each category in IT (BA context) and public health. Many tools have both free/open-source (OSS) and commercial options[\[38\]](file://file_0000000077c871f5abda42e073996abe#:~:text=,use%20these%20to%20organize%20tasks)[\[27\]](file://file_0000000077c871f5abda42e073996abe#:~:text=,domain%20CDC%20software).

| Category | IT Tools (OSS/Commercial) | PH Tools (OSS/Commercial) |
| :---- | :---- | :---- |
| **Office/Prod. Suite** | MS Office (Excel, Word, PPT) (comm); [LibreOffice](https://www.libreoffice.org/) (OSS) | Same (used in PH); Google Workspace (collab); [LibreOffice](https://www.libreoffice.org/) (OSS) |
| **Diagramming/Modeling** | Visio, Lucidchart (comm); [diagrams.net](https://app.diagrams.net/) (OSS)[\[39\]](file://file_0000000077c871f5abda42e073996abe#:~:text=,offers%20equivalent%20features%20for%20free) | [diagrams.net](https://app.diagrams.net/) (free); paper sketches; R (mermaid, ggplot flowcharts)[\[39\]](file://file_0000000077c871f5abda42e073996abe#:~:text=,offers%20equivalent%20features%20for%20free) |
| **Project Mgmt/Tracking** | Jira, Asana, Trello (free tier available)[\[14\]](file://file_0000000077c871f5abda42e073996abe#:~:text=if%20the%20terminology%20differs,health%20teams%20could%20use%20these)[\[15\]](file://file_0000000077c871f5abda42e073996abe#:~:text=,use%20these%20to%20organize%20tasks); MS Project (comm) | Trello/Asana (free tiers); [OpenProject](https://www.openproject.org/) (OSS); [Redmine](https://www.redmine.org/) (OSS)[\[14\]](file://file_0000000077c871f5abda42e073996abe#:~:text=if%20the%20terminology%20differs,health%20teams%20could%20use%20these)[\[15\]](file://file_0000000077c871f5abda42e073996abe#:~:text=,use%20these%20to%20organize%20tasks) |
| **Requirements Mgmt** | Confluence, Jama (comm); GitHub/GitLab issues (free); [Requirement Yogi](https://requirement-yogi.com/) (OSS)[\[40\]](file://file_0000000077c871f5abda42e073996abe#:~:text=,even%20using%20GitHub%2FGitLab%20issue%20trackers) | Similar: Confluence (small teams free); spreadsheets/Word; GitHub issues; **REDCap** (for data collection forms) |
| **Data Analysis** | Excel, Python (OSS), SQL databases; Tableau (comm) | R (OSS)[\[41\]](file://file_0000000077c871f5abda42e073996abe#:~:text=,health%23%3A~%3Atext%3DYou%2527ll%2520then%2520have%2520a%2520solid%2Cquizzes%2520with), Python (OSS), SAS (comm), [Epi Info](https://www.cdc.gov/epiinfo/) (public domain)[\[42\]](file://file_0000000077c871f5abda42e073996abe#:~:text=,based%20epidemiologic%20calculators%29%5B%5C%5B20%5C%5D%5D%28https%3A%2F%2Fen.wikipe) |
| **Visualization** | Tableau, Power BI (comm); R Shiny (OSS), Python’s matplotlib/seaborn (OSS) | R Shiny (OSS); Python viz; [OpenEpi](https://www.openepi.com/) (OSS); QGIS (OSS)[\[28\]](file://file_0000000077c871f5abda42e073996abe#:~:text=,free%29%20for%20dashboards), ArcGIS (comm) |
| **Survey/Data Collection** | Google Forms/Sheets (free); SurveyMonkey (comm) | REDCap (OSS/free to institutions)[\[43\]](file://file-9km8ahyGpb3YVHZpV4N4f8#:~:text=,DevOps%2C%20Asana%2C%20MS%20Planner%2C%20Jira); DHIS2 (OSS)[\[43\]](file://file-9km8ahyGpb3YVHZpV4N4f8#:~:text=,DevOps%2C%20Asana%2C%20MS%20Planner%2C%20Jira); CommCare, KoBoToolbox (OSS) |
| **GIS/Mapping** | Mapbox/Leaflet (OSS), QGIS (OSS) | QGIS (OSS)[\[43\]](file://file-9km8ahyGpb3YVHZpV4N4f8#:~:text=,DevOps%2C%20Asana%2C%20MS%20Planner%2C%20Jira), [ArcGIS](https://www.esri.com/) (comm); health facility mapping tools |
| **Collaboration/Docs** | Slack (comm), Confluence (comm/free), SharePoint | Slack/Teams; wikis (BookStack, MediaWiki)[\[44\]](file://file_0000000077c871f5abda42e073996abe#:~:text=,for%20documentation); shared drives (Google Drive) |

Many of these tools overlap: for example, **Jira** (IT) can also track tasks in a PH project, and **Tableau** (IT) can visualize health data as well as business KPIs. Highlighting OSS options (R, QGIS, diagrams.net, etc.) helps public agencies with tight budgets[\[28\]](file://file_0000000077c871f5abda42e073996abe#:~:text=,free%29%20for%20dashboards)[\[39\]](file://file_0000000077c871f5abda42e073996abe#:~:text=,offers%20equivalent%20features%20for%20free).

## Sample Public Health Use Cases

To illustrate Bridgeframe in action, consider two mock scenarios:

* **Disease Surveillance Dashboard:** A health department needs a real-time dashboard of influenza cases.

* *Planning:* Define scope (e.g. region, flu season) and SMART objectives (detect 10% rise in cases). Map BA “deliverables” to PH outputs (dashboard features → weekly incidence reports)[\[23\]](file://file_0000000077c871f5abda42e073996abe#:~:text=,number%20of%20clinics%20opened).

* *Elicitation:* Stakeholders include epidemiologists, IT staff, clinicians. Conduct interviews to capture requirements (e.g. “As an epidemiologist, I want weekly charts of flu incidence”). Translate to PH terms: user story → scenario (e.g. hospital lab tech needs automated lab data feed)[\[45\]](file://file_0000000077c871f5abda42e073996abe#:~:text=,group%20on%20the%20proposed%20solution).

* *Analysis:* Use R to import case data (read\_csv) and calculate moving averages. Example code:

* \`\`\`{r}  
  flu \<- read\_csv("data/flu\_cases.csv")  
  library(zoo)  
  flu \<- flu %\>%   
    arrange(date) %\>%  
    mutate(ma\_cases \= rollmean(cases, 4, fill=NA))  
  ggplot(flu, aes(date, ma\_cases)) \+ geom\_line() \+  
    labs(title="4-week Moving Avg of Flu Cases")

* \`\`\`

* This chart helps both BA (trend analysis) and PHA (surveillance) measure impact.[\[27\]](file://file_0000000077c871f5abda42e073996abe#:~:text=,domain%20CDC%20software)  
  \- *Design:* Create a mockup of the dashboard (e.g. in Figma or mermaid wireframe). Example mermaid flow:

* graph TD  
    QueryDB\[Database Query\] \--\> ParseData  
    ParseData \--\> Chart  
    Chart \--\> DashboardUI

* *Implementation:* Developers code the dashboard (R Shiny or Tableau). Use Git for version control and a GitHub Actions workflow to auto-deploy updates.

* *Evaluation:* Define KPIs vs health indicators (e.g. mean time to detect outbreak). After launch, gather user feedback, track errors, and iterate. Both BA retrospectives and PH outcome evaluation close the loop[\[35\]](file://file_0000000077c871f5abda42e073996abe#:~:text=,Mapping%20terms).

* **Vaccination Campaign Planning:** A county aims to vaccinate 80% of children under 5 in 1 year.

* *Planning:* Conduct a community health assessment (current vaccine coverage, barriers). Set SMART goal (“increase MMR coverage from 70% to 85% in 12 months”)[\[8\]](file://file_0000000077c871f5abda42e073996abe#:~:text=,plan%2C%20or%20health%20improvement%20plan).

* *Elicitation:* Engage schools, clinics, parents. Elicit requirements: supply chain needs (cold storage), communication materials. A BA might record these as “requirements”; PH translates to program activities (community meetings, school immunizations).

* *Analysis:* Use historical data (e.g. immunization rates by clinic) to identify low-coverage areas (R code or GIS mapping).

* *Design:* Develop a logic model linking inputs (funding, staff) to outcomes (increased immunity). For example:

* graph LR  
    Vaccine\_Supply \--\> Immunization\_Clinics  
    Immunization\_Clinics \--\> Vaccinated\_Children  
    Vaccinated\_Children \--\> Reduced\_Disease\_Incidence

* *Implementation:* Launch the campaign, tracking daily vaccination counts (perhaps using **DHIS2** forms). Maintain a shared Gantt chart (OpenProject/Excel) for tasks.

* *Evaluation:* Monitor coverage weekly; run surveys to assess public awareness. Compare final coverage to target (85%) and report in a post-project evaluation.

These examples demonstrate how Bridgeframe aligns a BA’s “features and sprints” mindset with PH’s “outputs and outcomes” perspective.

## Bridgeframe as a Quarto Project

To make Bridgeframe a reproducible toolkit, we structure it as a Quarto project on GitHub. A recommended layout:

Bridgeframe/  
├── \_quarto.yml           \# Quarto project configuration  
├── README.md             \# Project overview  
├── docs/                 \# Quarto documents (guide chapters, QMD files)  
│   ├── introduction.qmd  
│   ├── planning.qmd  
│   ├── elicitation.qmd  
│   ├── analysis.qmd  
│   ├── design.qmd  
│   ├── implementation.qmd  
│   ├── evaluation.qmd  
│   └── references.qmd  
├── data/                 \# Sample datasets (CSV, JSON)  
│   ├── surv\_data.csv  
│   └── vaccination\_data.csv  
├── analysis/             \# R/Python scripts and notebooks  
│   ├── run\_analysis.R    \# example analysis script  
│   └── utils.R           \# shared functions  
├── figures/              \# static images/diagrams (if any)  
├── \_plugins/             \# Quarto/Pandoc plugins (optional)  
├── .github/              \# GitHub config  
│   └── workflows/  
│       └── quarto.yml    \# CI: render Quarto on push  
└── .gitignore

* **\_quarto.yml** configures the site/project (site type, theme, search index). Example snippet:

project:  
  type: website  
website:  
  title: "Bridgeframe Toolkit"  
  navbar:  
    right:  
      \- text: "GitHub", href: https://github.com/yourorg/bridgeframe  
execute:  
  echo: false  
  warnings: false

* **Sample GitHub Actions:** To automate rendering, use a workflow (.github/workflows/quarto.yml):

name: Render Quarto  
on:  
  push:  
    branches: \[ main \]  
jobs:  
  render:  
    runs-on: ubuntu-latest  
    steps:  
      \- uses: actions/checkout@v2  
      \- uses: quarto-dev/quarto-actions@v2  
        with:  
          command: render

* **Data Directory:** Include anonymized sample datasets (e.g. synthetic surveillance or immunization data) to demonstrate pipelines. These can be loaded by code chunks.

* **R Code Structure:** Using folders for scripts and functions (e.g. analysis/utils.R) enables modular analysis. You can use the here package for file paths. For example, source(here::here("analysis", "utils.R")) in QMD code.

## GitHub Copilot & VS Code Setup

**VS Code Setup:** Install the [Quarto extension](https://marketplace.visualstudio.com/items?itemName=johnmacfarlane.quarto), the [R extension](https://marketplace.visualstudio.com/items?itemName=Ikuyadeu.r) (for R language support), and optionally \[GitLens/GitHub Pull Requests\] for version control. Use the R extension to run chunks interactively (press ⌥↵ or Ctrl+Enter). Enable rendering previews with the Quarto extension.

**GitHub Copilot:** To leverage Copilot in this project:  
\- Sign in to GitHub Copilot and enable it in VS Code (via *Settings → Extensions → Copilot*).  
\- Use prompts like “Write R code to plot a time series of disease cases” or “Generate a mermaid flowchart for a vaccination program logic model.” Copilot can autocomplete R code chunks and YAML metadata.  
\- When writing documentation, Copilot can suggest phrasing or examples (e.g. writing a SMART objective). Always review and refine the suggestions. \- Use **Copilot Labs** for more advanced features (e.g. converting a hand-drawn idea into code). For instance, sketch a diagram in plain text and ask Labs to output mermaid code.

**Automation Tips:** Consider automating repetitive tasks using R. For example, use the targets or drake package to create data pipelines from data/ to final figures. In Quarto, you can call these scripts with code chunks, ensuring the report updates when data change. For example:

\`\`\`{r}  
\# in planning.qmd to generate logic model table  
logic\_model \<- tribble(  
  \~Inputs, \~Activities, \~Outputs, \~Outcomes,  
  "Funding, Staff", "Community Outreach", "Workshops Held", "Knowledge Increase"  
)  
knitr::kable(logic\_model)

\`\`\`

This yields an embedded table bridging BA outputs (“reports”) to PH outputs (community workshops).

## Conclusion

Bridgeframe provides a comprehensive, practical guide for teams straddling IT and public health. It translates BA lingo into PH parlance and vice versa, aligning methodologies (Agile vs PDSA, user story vs case scenario, sprint vs grant cycle). All content is structured in Quarto with version control, enabling reproducible analysis and reporting. The toolkit includes templates, code examples, and diagrams (mermaid flowcharts, ggplots) so teams can quickly adopt or customize each phase’s deliverables. By citing both BA resources and public health frameworks[\[7\]](file://file_00000000f8f071f5b3354ac9a1ea4631#:~:text=The%20first%20phase%20of%20the,6)[\[35\]](file://file_0000000077c871f5abda42e073996abe#:~:text=,Mapping%20terms), and drawing on André van Zyl’s dual-domain experience[\[1\]](file://file-9km8ahyGpb3YVHZpV4N4f8#:~:text=I%27m%20a%20public%20health%20professional,technical%20solutions%20across%20diverse%20communities)[\[2\]](file://file-9km8ahyGpb3YVHZpV4N4f8#:~:text=KEY%20QUALIFICATIONS)[\[43\]](file://file-9km8ahyGpb3YVHZpV4N4f8#:~:text=,DevOps%2C%20Asana%2C%20MS%20Planner%2C%20Jira), Bridgeframe aims to build mutual understanding and effective collaboration between business analysts and public health professionals.

**References:** Key concepts and terminology are drawn from industry sources and public health literature[\[46\]](file://file_00000000f8f071f5b3354ac9a1ea4631#:~:text=%7C%20%3A,)[\[47\]](file://file_0000000077c871f5abda42e073996abe#:~:text=,number%20of%20clinics%20opened)[\[17\]](file://file_0000000077c871f5abda42e073996abe#:~:text=,term%20impact%20%28reduced%20disease%29%5B%5C%5B7%5C%5D%5D%28https%3A%2F%2Fwww.cdc.gov%2Fcardiovascular)[\[48\]](file://file_0000000077c871f5abda42e073996abe#:~:text=,Mapping%20terms), and all advice is rooted in real-world experience. The toolkit and templates herein can be found in the accompanying GitHub repository (with code and data) for immediate use and further development.

---

[\[1\]](file://file-9km8ahyGpb3YVHZpV4N4f8#:~:text=I%27m%20a%20public%20health%20professional,technical%20solutions%20across%20diverse%20communities) [\[2\]](file://file-9km8ahyGpb3YVHZpV4N4f8#:~:text=KEY%20QUALIFICATIONS) [\[43\]](file://file-9km8ahyGpb3YVHZpV4N4f8#:~:text=,DevOps%2C%20Asana%2C%20MS%20Planner%2C%20Jira) CV\_Andre\_van\_Zyl.md

[file://file-9km8ahyGpb3YVHZpV4N4f8](file://file-9km8ahyGpb3YVHZpV4N4f8)

[\[3\]](file://file_000000003be871f5b16c9be0a840c804#:~:text=,This%20stage) [\[6\]](file://file_000000003be871f5b16c9be0a840c804#:~:text=,https%3A%2F%2Fwww.cdc.gov%2Fpublic) Bridging Business Analysis and Public Health Analysis\_ A Shared Process Perspective.docx.md

[file://file\_000000003be871f5b16c9be0a840c804](file://file_000000003be871f5b16c9be0a840c804)

[\[4\]](file://file_0000000077c871f5abda42e073996abe#:~:text=,cycle%2F%23%3A~%3Atext%3DKey%2520Activities%253A) [\[5\]](file://file_0000000077c871f5abda42e073996abe#:~:text=,health) [\[8\]](file://file_0000000077c871f5abda42e073996abe#:~:text=,plan%2C%20or%20health%20improvement%20plan) [\[13\]](file://file_0000000077c871f5abda42e073996abe#:~:text=Key%20mappings%3A) [\[14\]](file://file_0000000077c871f5abda42e073996abe#:~:text=if%20the%20terminology%20differs,health%20teams%20could%20use%20these) [\[15\]](file://file_0000000077c871f5abda42e073996abe#:~:text=,use%20these%20to%20organize%20tasks) [\[16\]](file://file_0000000077c871f5abda42e073996abe#:~:text=,model.html%23%3A~%3Atext%3DLogic%2520mo) [\[17\]](file://file_0000000077c871f5abda42e073996abe#:~:text=,term%20impact%20%28reduced%20disease%29%5B%5C%5B7%5C%5D%5D%28https%3A%2F%2Fwww.cdc.gov%2Fcardiovascular) [\[19\]](file://file_0000000077c871f5abda42e073996abe#:~:text=,style%20familiar%20to%20PH%20teams) [\[20\]](file://file_0000000077c871f5abda42e073996abe#:~:text=,whether%20it%E2%80%99s%20a) [\[21\]](file://file_0000000077c871f5abda42e073996abe#:~:text=,latter%20uses%20a%20narrative%20style) [\[22\]](file://file_0000000077c871f5abda42e073996abe#:~:text=,working%20with%20public%20health%20stakeholders) [\[23\]](file://file_0000000077c871f5abda42e073996abe#:~:text=,number%20of%20clinics%20opened) [\[24\]](file://file_0000000077c871f5abda42e073996abe#:~:text=,organizations%20into%20their%20stakeholder%20lists) [\[25\]](file://file_0000000077c871f5abda42e073996abe#:~:text=,the%20solution%20meets%20the%20requirements) [\[26\]](file://file_0000000077c871f5abda42e073996abe#:~:text=,Key%20mappings) [\[27\]](file://file_0000000077c871f5abda42e073996abe#:~:text=,domain%20CDC%20software) [\[28\]](file://file_0000000077c871f5abda42e073996abe#:~:text=,free%29%20for%20dashboards) [\[29\]](file://file_0000000077c871f5abda42e073996abe#:~:text=,group%20on%20the%20proposed%20solution) [\[30\]](file://file_0000000077c871f5abda42e073996abe#:~:text=,product%20solves%20the%20initial%20problem) [\[31\]](file://file_0000000077c871f5abda42e073996abe#:~:text=,the%20backlog%20as%20work%20progresses) [\[32\]](file://file_0000000077c871f5abda42e073996abe#:~:text=,simple%20spreadsheet%20or%20meeting%20notes) [\[33\]](file://file_0000000077c871f5abda42e073996abe#:~:text=6) [\[34\]](file://file_0000000077c871f5abda42e073996abe#:~:text=,program%20refinement%20or%20policy%20changes) [\[35\]](file://file_0000000077c871f5abda42e073996abe#:~:text=,Mapping%20terms) [\[36\]](file://file_0000000077c871f5abda42e073996abe#:~:text=,%E2%80%9D) [\[37\]](file://file_0000000077c871f5abda42e073996abe#:~:text=,conference%20presentation%20on%20best%20practices) [\[38\]](file://file_0000000077c871f5abda42e073996abe#:~:text=,use%20these%20to%20organize%20tasks) [\[39\]](file://file_0000000077c871f5abda42e073996abe#:~:text=,offers%20equivalent%20features%20for%20free) [\[40\]](file://file_0000000077c871f5abda42e073996abe#:~:text=,even%20using%20GitHub%2FGitLab%20issue%20trackers) [\[41\]](file://file_0000000077c871f5abda42e073996abe#:~:text=,health%23%3A~%3Atext%3DYou%2527ll%2520then%2520have%2520a%2520solid%2Cquizzes%2520with) [\[42\]](file://file_0000000077c871f5abda42e073996abe#:~:text=,based%20epidemiologic%20calculators%29%5B%5C%5B20%5C%5D%5D%28https%3A%2F%2Fen.wikipe) [\[44\]](file://file_0000000077c871f5abda42e073996abe#:~:text=,for%20documentation) [\[45\]](file://file_0000000077c871f5abda42e073996abe#:~:text=,group%20on%20the%20proposed%20solution) [\[47\]](file://file_0000000077c871f5abda42e073996abe#:~:text=,number%20of%20clinics%20opened) [\[48\]](file://file_0000000077c871f5abda42e073996abe#:~:text=,Mapping%20terms) Bridging Business Analysis and Public Health Analysis.md

[file://file\_0000000077c871f5abda42e073996abe](file://file_0000000077c871f5abda42e073996abe)

[\[7\]](file://file_00000000f8f071f5b3354ac9a1ea4631#:~:text=The%20first%20phase%20of%20the,6) [\[9\]](file://file_00000000f8f071f5b3354ac9a1ea4631#:~:text=%7C%20%3A,) [\[10\]](file://file_00000000f8f071f5b3354ac9a1ea4631#:~:text=Identification%20of%20the%20core%20issue,) [\[11\]](file://file_00000000f8f071f5b3354ac9a1ea4631#:~:text=%7C%20,) [\[12\]](file://file_00000000f8f071f5b3354ac9a1ea4631#:~:text=Outcomes%2011%20,) [\[18\]](file://file_00000000f8f071f5b3354ac9a1ea4631#:~:text=phase%20is%20the%20BA%27s%20use,18) [\[46\]](file://file_00000000f8f071f5b3354ac9a1ea4631#:~:text=%7C%20%3A,) Bridging Business Analysis and Public Health.md

[file://file\_00000000f8f071f5b3354ac9a1ea4631](file://file_00000000f8f071f5b3354ac9a1ea4631)