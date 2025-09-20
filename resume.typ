#let accent_color = rgb("#4472C4")

#set page(
  paper: "us-letter",
  margin: (top: 0.4in, bottom: 0.3in, left: 0.4in, right: 0.4in),
)

#set text(
  font: "Times New Roman",
  size: 11pt,
  fill: black,
)

#set par(justify: true)

// Helper function for section headers
#let section_header(title) = {
  text(size: 14pt, weight: "bold", fill: accent_color, title)
  v(-0.8em)
  line(length: 100%, stroke: 1.5pt + accent_color)
  v(-0.6em)
}

// Helper function for job headers
#let job_header(company, location, title, dates) = {
  grid(
    columns: (1fr, auto),
    gutter: 1em,
    [
      *#company* \
      #text(style: "italic", title)
    ],
    align(right)[
      *#location* \
      #dates
    ]
  )
}

// Header
#align(center)[
  #grid(
    columns: (auto, 1fr, auto),
    gutter: 2em,
    align: (left, center, right),

    [
      (250) 268-4578 \
      liamcoop\@outlook.com
    ],

    text(size: 18pt, weight: "bold", fill: accent_color, "Liam Cooper"),

    [
      #link("https://linkedin.com/in/liamcoop")[linkedin.com/in/liamcoop] \
      #link("https://github.com/liamcoop")[github.com/liamcoop]
    ]
  )
]

// Experience Section
#section_header("Experience")

#v(0.2em)

#job_header("EducationPlannerBC", "Victoria, BC", "Lead Full-Stack Developer", "July 2021-Present")

#v(0.2em)

- Leading the migration of the province-wide post-secondary application service from IdentityServer4/.NET MVC with React to Next.js, enhancing performance, accessibility, and developer productivity
- Designed and implemented Go services with MSSQL, NATS messaging, and MeiliSearch capabilities, delivering backend APIs, data processing, and search functionality for client applications
- Developed extensive frontend features and maintained component library using React, TypeScript, TailwindCSS, Storybook; reduced technical debt and implemented responsive, accessible interfaces from Figma designs
- Led cross-functional projects, serving as the primary engineering point of contact with product, design, and leadership
- Conducted technical interviews and evaluated candidate assessments as part of the engineering hiring process, contributing to team growth and quality standards
- Mentored developers on system design, algorithms, language patterns, and code composition techniques, reducing technical blockers and improving team productivity
- Integrated the BC Provincial government issued digital ID into an OAuth2 authentication broker to streamline and improve the user authentication flow

#v(0.2em)

#job_header("Eddyfi Technologies - Inuktun", "Nanaimo, BC", "Electrical Engineering Co-op", "Jan-Apr 2020")

#v(0.2em)

- Designed and developed hardware for remotely operated vehicles, including electrical schematics and PCBs
- Authored design documentation, technical references, testing plans, and standard operating procedures for ROV systems
- Standardized a system for flashing microcontroller configurations, leading to reduced device misconfigurations by 10%, reduced waste of critical, long lead-time components, and derisking large orders and saving \~12 QA hours/month
- Conducted manual QA and triaged control software issues in Azure Boards, found critical issues and improved release quality

#v(0.2em)

// Projects Section
#section_header("Projects")

#text(size: 10pt, style: "italic")[Code samples, demos, and additional information available at #link("https://github.com/liamcoop")[github.com/liamcoop]]

#v(0.2em)

#grid(
  columns: (1fr, auto),
  gutter: 1em,
  [
    *TimeTracker: Easily and efficiently keep track of time spent working on different projects*

    - Track session time and notes for time spent on different projects/serving different clients
    - Review weekly summaries and add data into your billing software all at once
  ],
  align(right + top)[
    #text(fill: accent_color, weight: "bold")[
      TypeScript \
      Next.js \
      PostgreSQL
    ]
  ]
)

#grid(
  columns: (1fr, auto),
  gutter: 1em,
  [
    *Palette: A tool for updating, editing, and storing your tailwind colour palettes*

    - Create or manage your existing TailwindCSS colour palettes for different projects
    - These can be edited using the GUI, or by text through a JSON editor with live validation
  ],
  align(right + top)[
    #text(fill: accent_color, weight: "bold")[
      TypeScript \
      Next.js \
      PostgreSQL
    ]
  ]
)

#v(0.2em)

// Education Section
#section_header("Education")

#v(0.2em)

#grid(
  columns: (1fr, 1fr, auto),
  gutter: 1em,
  [*B.Eng., Electrical Engineering*],
  [University of Victoria],
  align(right, "2015-2020")
)

#v(0.2em)

// Skills Section
#section_header("Skills")

#v(0.2em)

#set par(spacing: 0.6em)
*Languages:* TypeScript, JavaScript, Go, C\#, C++

*Frontend:* Next.js, React, Redux, TanStack Query, TailwindCSS, Storybook, Jest, Vite/Webpack

*Backend & Infrastructure:* OAuth2, IdentityServer4, REST APIs, Kubernetes/k8s, Goose, Prisma

*Databases & Search:* MSSQL, PostgreSQL, MeiliSearch

*Other Tools:* Git, Docker, Figma, NATS, Azure Boards

*Spoken Languages:* English (native), French (fluent)
#set par(spacing: 0.6em)
