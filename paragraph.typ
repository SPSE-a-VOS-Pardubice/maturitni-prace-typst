
// recommended 1.25em gives barely 30 lines per page, this gives ~33
#let leading = 1em
// line height + 6pt
#let spacing = leading + 6pt

#let setup_paragraph(body) = {
  set par(
    first-line-indent: (
      all: true,
      amount: 1cm
    ),
    spacing: spacing,
    leading: leading,
    justify: true
  )
  body
}
