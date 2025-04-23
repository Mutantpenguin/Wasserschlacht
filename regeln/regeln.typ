#set text(lang: "de")
#set text(region: "DE")

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
    fill: orange,
    stroke: black + 0.5pt,
  )
  block(
    [
      #smallcaps(it.body)
      #v(5pt, weak: true)
      #line(length: 100%)
    ],
    below: 1em,
  )
}

#show heading.where(level: 2): it => {
  set text(
    font: heading_font,
    size: 12pt,
    weight: "bold",
  )
  block(smallcaps(it.body))
}

#show heading.where(level: 3): it => {
  set text(
    font: heading_font,
    size: 10pt,
    weight: "bold",
  )
  block(smallcaps(it.body))
}

#set text(
  font: "Noto Sans",
  size: 10pt,
)

#let title = "Wasserschlacht"
#let version = "0.1.0"

#set document(
  title: title,
  author: "Markus Lobedann <markus.lobedann@gmail.com>",
  description: "Ein Tabletop Spiel für Kinder.",
)

#set page(
  paper: "a4",
  margin: (x: 1.5cm, y: 1.5cm),
  columns: 2,
)

#place(
  top + center,
  float: true,
  scope: "parent",
  clearance: 2em,
)[
  #image("../logo.svg")

  #line(length: 20%)

  Version #version
]


#pagebreak()

= Wasserschlacht

TODO

= Vorbereitung

Jeder Mitspieler braucht:
- eine Spielfigur seiner Wahl, die ungefähr 3cm bis 5cm groß sein sollte
- ein sechsseitiger Würfel, auch "W6" genannt
- eine Spielkarte um seinen Namen aufzuschreiben, die Gegenstände zu sammeln und einzukreisen, wie naß man bereits geworden ist.
  #align(
    center,
    image(
      "karte.svg",
      width: 50%,
    ),
  )

Außerdem wird noch ein Maßstab mit Unterteilungen für 5cm, 10cm und 15cm benötigt.
Frag hierzu am besten deine Eltern.

Als Spielfläche wird ein Tisch (oder Fußboden) benötigt, der ungefähr 1m \* 1m groß sein sollte.
Außerdem muss auf der Spielfläche ganz viel Gelände aufgebaut werden.
Dies kann extra hierfür gebastelt, oder einfach aus Lego oder Duplo gebaut werden.
Je mehr und je bunter, umso besser.

So könnte dein Spielfeld aussehen:
#align(
  center,
  image("abbildungen/spielfläche_beispiel.png", width: 80%),
)

= Die Regeln

TODO

== Aktionen

TODO

=== Bewegen

TODO

=== Schießen

TODO

=== Werfen

== Gegenstände
