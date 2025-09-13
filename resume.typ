#let accent_color = rgb("#4472C4")

#set page(
  paper: "us-letter",
  margin: (top: 0.5in, bottom: 0.5in, left: 0.5in, right: 0.5in),
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

    [LiamCoop\@outlook.com],

    text(size: 18pt, weight: "bold", fill: accent_color, "Liam Cooper"),

    [
      Linkedin.com/in/LiamCoop \
      Github.com/LiamCoop
    ]
  )
]

// Experience Section
#section_header("Experience")

#v(0.3em)

#job_header("EducationPlannerBC", "Victoria, BC", "Lead Full-Stack Developer", "July 2021-Present")

#v(0.3em)

- Planned and currently leading the migration of the province-wide post-secondary application service from an IdentityServer4/.NET MVC with React to Next.js, improving performance, accessibility, developer velocity.
- Delivered full-stack features with Go/MSSQL microservices consumed by .NET, React, NextJS client apps
- Collaborated with designers to implement a component library using React, TypeScript, TailwindCSS, and Storybook; translated Figma designs into production-ready interfaces
- Integrated the BC Provincial government issued digital ID into an OAuth2 authentication broker to streamline and improve the user authentication flow
- Led cross-functional projects, serving as the primary engineering point of contact with product, design, and leadership to align priorities and ensure timely delivery
- Hands-on experience deploying and debugging workloads in Kubernetes, including service configuration, log inspection, and runtime troubleshooting using kubectl

#v(0.3em)

#job_header("Eddyfi Technologies - Inuktun", "Nanaimo, BC", "Electrical Engineering Co-op", "Jan-Apr 2020")

#v(0.3em)

- Hardware design+development for remotely operated vehicles, schematic and PCB layouts
- Software and regression testing, manual QA, creating and managing tickets in Azure Boards
- Authored design documentation, technical references, testing plans, and standard operating procedures
- Standardized system for microcontroller configs, reduced device misconfigurations by 10%, reduced waste of critical, long lead-time components, derisking large orders and saving ~12 QA hours/month
- Conducted system stress and load tests to determine product specifications and limitations

#v(0.3em)

// Projects Section
#section_header("Projects")

#text(size: 10pt, style: "italic")[Code samples, demos, and additional information available at github.com/LiamCoop]

#v(0.3em)

#grid(
  columns: (1fr, auto),
  gutter: 1em,
  [
    *TimeTracker: Easily and efficiently keep track of time spent working on different projects*

    - Track session time and notes for time spent on different projects/serving different clients.
    - Review weekly summaries and add data into your billing software all at once
  ],
  align(right + top)[
    #text(fill: accent_color, weight: "bold")[
      TypeScript \
      Next.js \
      TailwindCSS \
      PostgreSQL
    ]
  ]
)

#grid(
  columns: (1fr, auto),
  gutter: 1em,
  [
    *Palette: A tool for updating, editing, and storing your tailwind colour palettes*

    - Create or manage your existing TailwindCSS colour palettes for different projects.
    - These can be edited using the GUI, or by text through a JSON editor with live validation.
  ],
  align(right + top)[
    #text(fill: accent_color, weight: "bold")[
      TypeScript \
      Next.js \
      PostgreSQL
    ]
  ]
)

#v(0.3em)

// Education Section
#section_header("Education")

#v(0.3em)

#grid(
  columns: (1fr, auto),
  gutter: 1em,
  [*B.Eng., Electrical Engineering* #h(2em) University of Victoria],
  align(right, "2015-2020")
)

#v(0.3em)

// Skills Section
#section_header("Skills")

#v(0.3em)

#set par(spacing: 0.6em)
*Languages:* TypeScript, JavaScript, Go, C\#, C++

*Frameworks & Libraries:* React, Redux, TanStack Query, TailwindCSS, Storybook, Jest, Vite/Webpack

*Backend & Infrastructure:* Kubernetes, OAuth2, REST APIs, Goose, Prisma

*Databases & Search:* MSSQL, PostgreSQL, SQLite, MeiliSearch, NATS

*Other Tools:* Git, Docker, Figma

*Spoken Languages:* English (native), French (fluent)
#set par(spacing: 0.65em)
