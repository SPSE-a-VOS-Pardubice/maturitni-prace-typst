#let assignment_pages() = {
  // according to the Word template distributed to the students, the assignment section will span 2 pages, and students are not supposed to print it themselves
  counter(page).update(v => v + 2)
}
