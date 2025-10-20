
#let setup_paragraph(body) = {
  set par(
    first-line-indent: (
      all: true,
      amount: 1cm
    ),
    spacing: 1.25em + 6pt * 2, // not sure if this is the exact formula
    leading: 1.25em,
    justify: true
  )
  body
}
