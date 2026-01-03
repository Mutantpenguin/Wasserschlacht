#let start = (
  (
    name: [Regenschirm],
    icon: "ausrüstung/regenschirm.svg",
    contents: [
      Die Spielfigur wird immer 1 schlechter getroffen.
    ],
  ),
  (
    name: [Turbo-Schuhe],
    icon: "ausrüstung/turbo-schuhe.svg",
    contents: [
      Die Spielfigur kann sich immer 15cm bewegen.
    ],
  ),
  (
    name: [Zielfernrohr],
    icon: "ausrüstung/zielfernrohr.svg",
    contents: [
      Die Spielfigur trifft immer um 1 besser (nicht bei Wasserbomben).
    ],
  ),
)

#let find = (
  (
    name: [Bonbon],
    icon: "ausrüstung/bonbon.svg",
    contents: [
      Wenn die Spielfigur ein Bonbon isst, darf sie ihre Wasserpistole einmal zusätzlich benutzen (oder auch eine Wasserbombe werfen, falls sie eine hat).
    ],
    count: 5,
  ),
  (
    name: [Energy-Drink],
    icon: "ausrüstung/energy-drink.svg",
    contents: [
      Wenn die Spielfigur einen Energy-Drink trinkt, darf sie sich einmal zusätzlich bewegen.
    ],
    count: 5,
  ),
  (
    name: [Handtuch],
    icon: "ausrüstung/handtuch.svg",
    contents: [
      Bei Benutzung eines Handtuchs darfst du einen Wassertropfen abtrocknen.

      Das funktioniert automatisch wenn die Spielfigur getroffen wird, während sie ein Handtuch besitzt.
    ],
    count: 8,
  ),
  (
    name: [Wasserbombe],
    icon: "ausrüstung/wasserbombe.svg",
    contents: [
      Funktioniert wie das Benutzen der Wasserpistole, sie trifft aber schon bei 2+.
      Dafür fliegt sie auch nur höchstens 10cm weit.
    ],
    count: 8,
  ),
)
