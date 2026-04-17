#let T = (
  "cs": (
    annotation: "Anotace",
    keywords: "Klíčová slova",
  ),
  "en": (
    annotation: "Annotation",
    keywords: "Keywords",
  ),
)

#let _page(language: none, content: none) = [
  #let t = T.at(language)
  #set text(style: "italic")
  #show heading: set text(weight: "regular")

  #heading(outlined: false, t.at("annotation"))
  #v(10pt) // same as h1 in the document

  #content.at("text")

  #t.at("keywords"): #content.at("keywords").join(", ")
]


#let annotation_pages(
  content: none,
) = {
  for (language, content) in content.pairs() {
    pagebreak(weak: true)
    _page(language: language, content: content)
    pagebreak(weak: true)
  }
}
