- Why capacitor from inverter to (B'C)'?
- Acting as a delay, artificially increase the delay of the inverter, extra delay => more obvious

- Decoupling capacitor(2 on the right)

  - should be as close to ground pin as possible

  - previous semesters: BJT transistors, not very good input impedance, not very good output impedance
  - now: CMOS
    - static power is low
      - if aint switching, static power is almost nothing
      - almost direct path to 1 or gnd
    - problem: 
      - while switching, momentarily short circuit between vdd and gnd
      - a lot of noise between chips when switching
    - 