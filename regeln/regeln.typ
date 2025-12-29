#set text(lang: "de")
#set text(region: "DE")

#set par(
  justify: true,
  linebreaks: "optimized",
)

#let item_font = "Coiny"

#let _item(color, name, icon_name, content) = {
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
          text(
            name,
            font: item_font,
            size: 1.5em,
          ),
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
        content,
      )
    ],
  )
}

#let start_item(name, icon_name, content) = {
  _item(rgb("#f7b02a"), name, icon_name, content)
}

#let find_item(name, icon_name, content) = {
  _item(rgb("#4cb9d4"), name, icon_name, content)
}

#let heading_font = "Coiny"

#show heading.where(level: 1): it => {
  set text(
    font: heading_font,
    size: 22pt,
    weight: "bold",
    fill: rgb("#2b779dff"),
  )
  block(
    [
      #smallcaps(it.body)
      #v(7pt, weak: true)
      #line(
        length: 100%,
        stroke: (
          paint: gradient.linear(rgb("#2b779dff"), white),
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
    size: 12pt,
    weight: "bold",
    fill: rgb("#2b779dff"),
  )
  block(
    [
      #smallcaps(it.body)
      #v(4pt, weak: true)
      #line(
        length: 100%,
        stroke: (
          paint: gradient.linear(rgb("#2b779dff"), white),
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
  #image(
    "../logo.svg",
    width: 70%,
  )

  Version #version
]


#pagebreak()

= Wasserschlacht

In Wasserschlacht trittst du mit 1 bis 3 weiteren Spielern gegeneinander an, um festzustellen, wer von Euch am besten daran ist, die anderen nass zu machen.

Ihr seit abwechselnd dran Eure Spielfiguren zu bewegen oder mit ihren Wasserpistolen oder Wasserbomben die anderen Spielfiguren nass zu machen.

Wer klitschenass ist muss nach Hause gehen und hat verloren!

= Vorbereitung

- Ihr müsst 2 bis 4 Spieler sein.

- Ihr braucht für jeden Spieler Spielfiguren die ungefähr 3cm bis 5cm groß sein sollten.
  Lasst Eurer Fantasie freien Lauf und nehmt alles was Euch in die Hände kommt:
  LEGO, DUPLO, Transformers, Dinosaurier oder Pokemon, jedes Spielzeug ist in Ordnung!

- Einigt Euch darauf, mit wie vielen Spielfiguren Ihr spielen möchtet.
  Jeder braucht mindestens 1 Spielfigur und höchstens 4 Spielfiguren.
  Achtet darauf, dass jeder Mitspieler genau gleich viele Spielfiguren hat.
  Wenn Ihr zum ersten mal spielt solltet Ihr jeder nur 1 Spielfigur nehmen.

- Ihr braucht für jeden Mitspieler einen sechsseitigen Würfel der auch "W6" genannt wird.

- Für jede Eurer Spielfiguren benötigt Ihr noch eine Spielkarte um ihren Namen aufzuschreiben, die Gegenstände zu sammeln und einzukreisen, wie naß sie bereits geworden ist.
  #align(
    center,
    image(
      "karte.svg",
      width: 50%,
    ),
  )

- Außerdem wird noch ein Maßstab mit Unterteilungen für 5cm, 10cm und 15cm benötigt.
  Am besten funktioniert es, wenn jeder Mitspieler einen hat.

= Spielfläche
Als Spielfläche wird ein Tisch (oder Fußboden) benötigt, der ungefähr 1m \* 1m groß sein sollte.
Außerdem muss auf der Spielfläche ganz viel Gelände aufgebaut werden.
Dies kann extra hierfür gebastelt, oder einfach aus LEGO oder DUPLO gebaut werden.
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

= Die Ausrüstung

Es gibt Gegenstände, die für jede Spielfigur vor Beginn des Spiels ausgesucht werden oder während des Spiel gefunden werden können.

Auf der Spielkarte sind dafür 4 Felder vorhanden:
- 1 in orange für einen Start-Gegenstand
- 3 in blau für Fund-Gegenstände

== Start-Gegenstände

Jede Spielfigur startet mit genau einem dieser Gegenstände der von ihrem Spieler frei ausgewählt werden darf.

#start_item(
  "Regenschirm",
  "gegenstände/regenschirm.svg",
  [
Die Spielfigur wird immer 1 schlechter getroffen.
  ],
)

#start_item(
  "Zielfernrohr",
  "gegenstände/zielfernrohr.svg",
  [
Die Spielfigur trifft immer um 1 besser (nicht bei Wasserbomben).
  ],
)

#start_item(
  "Turbo-Schuhe",
  "gegenstände/turbo-schuhe.svg",
  [
Die Spielfigur kann sich immer 15cm bewegen.
  ],
)

== Fund-Gegenstände

Diese Gegenstände können zufällig auf dem Spielfeld gefunden werden.

Wenn eine Spielfigur sich über einen Gegenstand bewegt kann sie ihn sofort aufheben.
Sind alle Felder voll, kann kein weiterer Gegenstand mehr aufgehoben werden!

Spielfiguren dürfen aber jederzeit Gegenstände fallen lassen.

#find_item(
  "Handtuch",
  "gegenstände/handtuch.svg",
  [
Bei Benutzung eines Handtuchs darfst du einen Wassertropfen abtrocknen.

Das funktioniert automatisch wenn die Spielfigur getroffen wird, während sie ein Handtuch besitzt.
  ],
)

#find_item(
  "Energy-Drink",
  "gegenstände/energy-drink.svg",
  [
Wenn die Spielfigur einen Energy-Drink trinkt, darf sie sich einmal extra bewegen.
  ],
)

#find_item(
  "Bonbon",
  "gegenstände/bonbon.svg",
  [
Wenn die Spielfigur ein Bonbon isst, darf sie einmal mehr schießen (oder auch eine Wasserbombe werfen, falls sie eine hat).
  ],
)

#find_item(
  "Wasserbombe",
  "gegenstände/wasserbombe.svg",
  [
Funktioniert wie das Schießen mit der Wasserpistole, sie trifft aber schon bei 2+.
Dafür fliegt sie auch nur höchstens 10cm weit.
  ],
)
