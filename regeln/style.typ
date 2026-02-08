#let _font_color = rgb("#2b779dff")

#let apply(doc) = [
  #set text(
    font: "Noto Sans",
    size: 10pt,
    lang: "de",
    region: "DE",
  )

  #set par(
    justify: true,
    linebreaks: "optimized",
  )

  #let heading_font = "Coiny"

  #show heading.where(level: 1): it => {
    set text(
      font: heading_font,
      size: 22pt,
      weight: "bold",
      fill: _font_color,
    )
    block(
      [
        #smallcaps(it.body)
        #v(7pt, weak: true)
        #line(
          length: 100%,
          stroke: (
            paint: gradient.linear(_font_color, white),
            thickness: 3pt,
            cap: "round",
          ),
        )
      ],
      below: 1em,
    )
  }

  #show heading.where(level: 2): it => {
    set text(
      font: heading_font,
      size: 14pt,
      weight: "bold",
      fill: _font_color,
    )
    block(
      [
        #smallcaps(it.body)
        #v(4pt, weak: true)
        #line(
          length: 100%,
          stroke: (
            paint: gradient.linear(_font_color, white),
            thickness: 1pt,
            cap: "round",
          ),
        )
      ],
      below: 0.5em,
    )
  }

  #show heading.where(level: 3): it => {
    set text(
      font: heading_font,
      size: 12pt,
      weight: "bold",
      fill: _font_color,
    )
    block(smallcaps(it.body))
  }

  #doc
]

#let item_font = "Coiny"

#let _item(color, name, icon_name, content, count) = {
  block(
    stroke: black,
    radius: 3pt,
    breakable: false,
    clip: true,
    [
      // header
      #table(
        columns: (1fr, 20%),
        stroke: (x, y) => (
          left: if x > 0 { black },
          bottom: black,
        ),
        rows: 3em,
        fill: color,
        align: alignment.center,
        table.cell(
          align: horizon,
          [
            #text(
              name,
              font: item_font,
              size: 1.5em,
            )
          ],
        ),
        table.cell(
          align: horizon,
          inset: 0.2em,
          image(icon_name),
        ),
      )

      #v(0pt, weak: true)

      #block(
        inset: 10pt,
        width: 100%,
        [
          #content

          #if (count > 0) {
            align(
              bottom + center,
              block(
                fill: rgb("#2b779d"),
                inset: 5pt,
                radius: 5pt,
                text(
                  str(count) + " Marker",
                  font: item_font,
                  size: 1em,
                  fill: white,
                ),
              ),
            )
          }
        ],
      )
    ],
  )
}

#let _start_item(name, icon_name, content) = {
  _item(rgb("#f7b02a"), name, icon_name, content, 0)
}

#let _find_item(name, icon_name, content, count) = {
  _item(rgb("#4cb9d4"), name, icon_name, content, count)
}

#let start_items(item_array) = {
  for i in item_array {
    _start_item(
      i.name,
      i.icon,
      i.contents,
    )
  }
}

#let find_items(item_array) = {
  for i in item_array {
    _find_item(
      i.name,
      i.icon,
      i.contents,
      i.count,
    )
  }
}
