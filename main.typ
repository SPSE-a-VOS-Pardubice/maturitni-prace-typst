#import "pages/annotation.typ": annotation_pages
#import "pages/assignment.typ": assignment_page
#import "pages/author_declaration.typ": author_declaration_page
#import "pages/introduction.typ": introduction_page
#import "pages/title_page.typ": title_page
#import "headings.typ": setup_headings
#import "paragraph.typ": setup_paragraph

#let project(
  school: none,
  subject: none,
  title: none,
  date: none,
  author: none,
  annotation: none,
  program: none,
  school_year: none,
  class: none,
  lead: none,
  lead_workplace: none,
  assignment: none,
  assignment_points: none,
  annotations: none,
  introduction: none,
  body,
) = {
  set page(
    paper: "a4",
    margin: (top: 25mm, left: 30mm, right: 20mm, bottom: 25mm)
  )
  set text(
    size: 12pt,
    region: "cz",
    lang: "cz"
  )
  set smartquote(quotes: "„“") // typst does not support Czech quotes
  // auto insert non-breaking space according to Czech language rules
  show regex(" [aAkKiIuUsSoOvV] " ): it => [ #it.text.trim()~]

  title_page(
    school: school,
    subject: subject,
    title: title,
    date: date,
    author: author
  )

  show: setup_paragraph

  author_declaration_page()

  assignment_page(
    program: program,
    school_year: school_year,
    class: class,
    author: author,
    title: title,
    lead: lead,
    lead_workplace: lead_workplace,
    assignment: assignment,
    points: assignment_points
  )

  annotation_pages(content: annotations)

  outline(
    title: "Obsah"
  )

  show: setup_headings
  set page(numbering: "1")

  introduction_page(introduction)

  counter(heading).update(0)

  body
}
