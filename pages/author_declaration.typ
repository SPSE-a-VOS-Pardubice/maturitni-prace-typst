#let author_declaration_page() = {
  pagebreak(weak: true)

  v(1fr)
  text(style: "italic", quote[
    Prohlašuji, že jsem maturitní nebo absolventskou nebo seminární práci vypracoval(a) samostatně a všechny použité literární prameny a zdroje informací cituji a uvádím v seznamu použité literatury a zdrojů informací.
  ])

  v(1cm)

  box(width: 100%)[
    V Pardubicích dne ...........................
    #h(1fr)
    podpis ................................................
  ]

  pagebreak(weak: true)
}
