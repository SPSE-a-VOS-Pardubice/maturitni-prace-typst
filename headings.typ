#let setup_headings(doc) = {
  // Arabskými číslicemi, bez tečky na konci (spec 5.1)
  set heading(numbering: "1.1")

  // Hlavní kapitoly začínají na nové stránce (spec 5.1)
  show heading.where(level: 1): it => {
    pagebreak(weak: true)
    // Před nadpisy hlavních kapitol mezera (6–20) bodů, za nadpisy (25–40) bodů
    v(20pt, weak: true)
    it
    v(30pt, weak: true)
  }

  // U podkapitol před (12–30) bodů, za (12–30) bodů
  show heading.where(level: 2): it => {
    v(20pt, weak: true)
    it
    v(15pt, weak: true)
  }

  show heading.where(level: 3): it => {
    v(20pt, weak: true)
    it
    v(15pt, weak: true)
  }

  doc
}
