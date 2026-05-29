#import "_items.typ" as items

#let circle_diameter = 1.5cm

#place(
  center,
  [
    #block(
      width: 60%,
      height: 100%,
      [
        #let group_idx = 0;

        #for item in items.find {
          let i = item.count

          while i > 0 {
            place(
              dx: (100% / (items.find.len() - 1)) * group_idx - (circle_diameter / 2),
              dy: 6em * (i - 1),
              box(
                width: circle_diameter,
                height: circle_diameter,
                radius: circle_diameter / 10,

                stroke: 0.5pt + black,
                inset: 5pt,

                clip: true,

                image(item.icon),
              ),
            )

            i -= 1
          }

          group_idx += 1
        }
      ],
    )
  ],
)
