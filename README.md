# Lumberjack - Through-hole ortholinear 60% keyboard PCB

Lumberjack is a split 12x6 ortholinear keyboard PCB using through-hole components only.

The goal of this project is to build an all through-hole component ortholinear PCB that fits in a standard 60% tray mount case.

Inspired by the [Plaid keyboard](https://github.com/hsgw/plaid).

![PCB render](images/pcb-render.jpg)

* Designed to be easy to build with minimal soldering experience.
* All through-hole components, no SMD soldering required.
* Get that visible component aesthetic in a standard 60% tray-mount case.
* Plateless.

![Layout options](images/layout.png)

![PCB design](images/pcb-design.png)

# Bill of Materials (BOM)

|Ref      |Num  |Description                                      |
|---------|-----|-------------------------------------------------| 
|C1,C2    |2    |multilayer ceramic capacitor 22pF or 20pF        |
|C3       |1    |electrolytic capacitor 4.7uF                     |
|C4,C5    |2    |multilayer ceramic capacitor 100nF               |
|D1-65    |65   |diode 1n4148                                     |
|D66,D67  |2    |zener diode 3.6V                                 |
|F1       |1    |polyfuse 100mA                                   |
|J1       |1    |USB miniB connector Omron XM7D-0512 or equivalent|
|J2       |1    |2x3 pin header                                   |
|LED1,LED2|2    |3mm LED                                          |
|MX1-65   |62-65|MX PCB mount (5 pin) keyboard switch             |
|R1,R7,R8 |3    |resistor 1.5kΩ                                   |
|R2,R3    |2    |resistor 75Ω                                     |
|R4       |1    |resistor 10kΩ                                    |
|SW50,SW51|2    |6mm tactile switch                               |
|U1       |1    |ATMEGA328P                                       |
|Y1       |1    |crystal 16MHz                                    |
|PCB      |1    |                                                 |
|stab     |0-2  |switch stabilizer for optional 2u keys           |
|cover    |1    |acrylic component cover 95x57x2mm                |
|screw    |8    |M2 8mm                                           |
|standoff |4    |M2 10mm                                          |

# Ordering PCBs

PCBs can be manufactuered by a variety of online PCB fabricators. You can use [PCBShopper](https://pcbshopper.com/) to search for the best price.

The zip file in the gerber directory contains the gerber files your fabricator will need to make the PCB [lumberjack.zip](https://github.com/peej/lumberjack-keyboard/blob/master/gerber/lumberjack.zip) PCB.

When uploading the gerber zip files, use the default PCB settings.

![PCB](images/pcb.jpg)

# Construction

Solder all the components onto the top side of the PCB except the USB connector which should be on the back of the board. Take care to put the correct value resistors and capacitors in the correct places.

Ensure that polarised components (diodes, LEDs, electrolytic capacitor (C3), IC socket) are in the correct orientation. The square pad is for the negative side of the component; for a diode this means the side with the black stripe; for LEDs and C3 the short leg is the cathode and goes in the square pad.

# Bootloader

You will need to flash the microprocessor with a bootloader. To do this you will need another device which can be connected to the ISP headers and used to flash the bootloader to the chip. Since Lumberjack is the same as the Plaid, we can use the same bootloader.

* Download the [Plaid bootloader](https://github.com/hsgw/USBaspLoader/tree/plaid) and follow the instructions to compile the firmware.
* Follow the [QMK ISP flashing guide](https://beta.docs.qmk.fm/using-qmk/guides/keyboard-building/isp_flashing_guide) to get the firmware onto the chip.

# Firmware

The matrix and pinout of the Lumberjack are the same as the Plaid, so you can use the QMK Plaid firmware on the Lumberjack. Follow the [QMK firmware instructions](https://beta.docs.qmk.fm/using-qmk/guides/flashing/flashing) to build and flash the Plaid firmware.

# Component cover

Cut a piece of 2mm thick acrylic to size (95x57mm) and drill 4 m2 holes in the corners for the standoffs. Use the PCB as a guide for the hole positions.

Affix the 4 standoffs to the PCB with screws from underneath the PCB. Use the remaining 4 screws to attach the acrylic to the top of the standoffs.
