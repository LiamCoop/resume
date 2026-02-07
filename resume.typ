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

- Improved maintainability, developer velocity and frontend performance metrics through the refactor and migration of a post secondary application web-app from ASP.NET to Next.js; validated complex logic with tap-compare and supported incremental rollout with the strangler fig pattern
// - Refactored and migrated a post secondary application web-app from ASP.NET to Next.js to improve developer velocity, maintainability and frontend performance metrics; validated complex logic with tap-compare and supported incremental rollout with the strangler fig pattern
- Optimized performance of critical backend services during high traffic periods, used k6 to identify critical bottlenecks and validate performance improvements leading to 9x throughput improvements, scaling critical service to handling over 2k RPS
- Established best practices for the broader engineering team by defining architecture, design patterns and technical standards
- Designed backend services for processing applications using Go, NATS, supporting peak volumes of 10k applications per day
- Scaled engineering capacity through technical interviews, hiring, and mentoring 8 new developers over 2 years
- Integrated the BC Services Card digital ID to streamline user signup and auth with secure, government verified credentials

#v(0.2em)

#job_header("Eddyfi Technologies - Inuktun", "Nanaimo, BC", "Electrical Engineering Co-op", "Jan-Apr 2020")

#v(0.2em)

- Developed high-voltage power distribution hardware for submersible robotics applications, including schematic capture, PCB layout, testing and validation, and in-house manufacturing support through production
- Designed and standardized a microcontroller configuration system, reducing device misconfigurations by 10%, minimizing waste of long lead-time components, and saving ~12 QA hours per month while derisking large production orders
- Authored comprehensive design docs, technical references, and SOPs to support ROV assembly, testing and deployment
- Resolved multi-disciplinary issues during assembly/QA while collaborating with engineers, technicians, machinists and QA
// - Performed software QA and defect triage in Azure Boards, identifying critical issues and improving overall release quality

#v(0.2em)

// Projects Section
#section_header("Projects")

#text(size: 10pt, style: "italic")[Code samples, demos, and additional information available at #link("https://github.com/liamcoop")[github.com/liamcoop]]

#v(0.2em)

#grid(
  columns: (1fr, auto),
  gutter: 1em,
  [
    *Rules Engine: evaluates complex user-defined schemas and rules*
    - Designed a stateless, horizontally scalable rule engine evaluating dynamic user-devined schemas via Common Expression Language
    - Achieved ~7k RPS per instance under sustained load (10-minute test, ~4M evaluations)
    - Identified and analyzed saturation behavior at tail latencies (p95 ~2.8s under peak load)
  ],
  align(right + top)[
    #text(fill: accent_color, weight: "bold")[
      Go \
      PostgreSQL \
    ]
  ]
)

#grid(
  columns: (1fr, auto),
  gutter: 1em,
  [
    *Distrace: Distributed tracing backend for OpenTelemetry*

    - Correlates out-of-order spans across services using TraceID grouping and parent–child resolution
    - Implements bounded trace completion with inactivity and max-age limits (30s / 5m) to balance completeness with memory constraints
  ],
  align(right + top)[
    #text(fill: accent_color, weight: "bold")[
      Go \
      Kafka \
      OpenTelemetry
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

 #grid(
  columns: (1fr, 3fr),
  gutter: 1em,
  row-gutter: 0.6em,

  [*Languages*], [TypeScript, JavaScript, Go, C\#, C++],

  [*Frontend*], [Next.js, React, Redux, TanStack Query, TailwindCSS, Storybook, Jest, Vite/Webpack],

  [*Backend & APIs*], [REST APIs, Prisma, Goose],

  [*Databases & Messaging*], [MSSQL, PostgreSQL, Redis, Kafka, NATS],

  [*Infrastructure & DevOps*], [Kubernetes (k8s), Docker],

  [*Tooling & Collaboration*], [Git, k6, MeiliSearch, Figma, Azure Boards],
  // [*Spoken Languages*], [English (native), French (fluent)]
)

