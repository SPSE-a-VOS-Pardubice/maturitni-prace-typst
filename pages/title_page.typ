
#let title_page(
  school: none,
  subject: none,
  title: none,
  date: none,
  author: none,
) = {
  pagebreak(weak: true)
  set align(center)
  set text(14pt)

  "Střední průmyslová škola elektrotechnická a Vyšší odborná škola Pardubice"
  v(2cm)
  text(18pt, weight: "bold", school)
  v(1fr)
  text(18pt, weight: "bold", subject)
  v(1cm)
  text(18pt, weight: "bold", title)
  v(1fr)
  box([
    #text(14pt, date)
    #h(1fr)
    #text(14pt, author)
  ])

  pagebreak(weak: true)
}
