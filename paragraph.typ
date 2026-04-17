
// recommended 1.25em gives barely 30 lines per page, this gives ~33
#let leading = 1em
// line height + 6pt
#let spacing = leading + 6pt

#let setup_paragraph_spacing(body) = {
  set par(
    spacing: spacing,
    leading: leading,
    justify: true,
  )
  body
}

#let setup_paragraph_indent(body) = {
  set par(
    first-line-indent: (
      all: true,
      amount: 1cm,
    ),
  )
  body
}
