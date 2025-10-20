
#let author_declaration_page() = {
  pagebreak(weak: true)

  v(1fr)
  text(style: "italic", quote[
    Prohlašuji, že jsem maturitní práci vypracoval(a) samostatně a použil(a) jsem literárních pramenů,  informací a obrázků, které cituji a uvádím v seznamu použité literatury a zdrojů informací a v seznamu použitých obrázků a neporušil jsem autorská práva.

    Souhlasím s umístěním kompletní maturitní práce nebo její části na školní internetové stránky a s použitím jejích ukázek pro výuku.
  ])

  v(1cm)

  box[
    V Pardubicích dne ...........................
    #h(1fr)
    podpis ................................................
  ]

  pagebreak(weak: true)
}
