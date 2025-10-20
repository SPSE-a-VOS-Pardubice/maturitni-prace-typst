
#let setup_headings(doc) = {
  set heading(numbering: "1.1")

  show heading.where(level: 1): it => {
    pagebreak(weak: true)
    v(20pt, weak: true)
    it
    v(20pt, weak: true)
  }
  show heading.where(level: 2): it => {
    v(30pt, weak: true)
    it
    v(15pt, weak: true)
  }
  show heading.where(level: 3): it => {
    v(30pt, weak: true)
    it
    v(15pt, weak: true)
  }

  doc
}
