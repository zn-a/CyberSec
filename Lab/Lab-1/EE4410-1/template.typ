#let course-code = "ET1234"
#let course-name = "Advanced Embedded Systems"
#let title = "Quadcopter Control Systems"
#let subtitle = "Final Assignment Report"
#let authors = [
  ("Alice Jansen", "1234567"),
  ("Bob de Vries", "7654321"),
]
#let date = datetime.today()

#let project(title: "", authors: (), date: none, body) = {
  
  // Set the document's metadata.
  set document(author: authors, title: title)

  // Set page numbering and position.
  set page(numbering: "1", number-align: center)

  // Set font and language.
  set text(font: "TeX Gyre Termes", lang: "en")

  // Use hierarchical heading numbering (1.1, 1.2, etc.).
  set heading(numbering: "1.1")

  // Cover Page Layout
  align(center)[
    // Main Title
    #block(text(weight: 700, 1.75em, title))

    // Vertical spacing
    #v(1em, weak: true)

    // Date
    #date
  ]

  // Author information.
  pad(
    top: 0.5em,
    bottom: 0.5em,
    x: 2em,
    grid(
      columns: (1fr,) * calc.min(3, authors.len()),
      gutter: 1em,
      ..authors.map(author => align(center, strong(author))),
    ),
  )

  // Body layout (justified paragraphs)
  set par(justify: true)

  body
}
