LM399 Sub-ppm Reference Voltage
===================

This repository contains the KiCAD PCB project files for a sub-ppm temperature coefficient __negative voltage reference__ used in our laser drivers.

![LM399 reference board](images/reference_board.png)

About
-----
The root folder contains the KiCAD files and the bill of materials, while the gerber files can be found in the [/gerber](gerber/) folder.

Circuit description
-------------------

![LM399 reference board circuit](images/reference_board_circuit.png)

This circuit utilizes the excellent LM399 voltage reference and outputs and amplified voltage of either -10 V or -15 V. There is no option to trim the output voltage as the absolute value is not that important, but stability is. The output voltage will be 10 V / 15 V __below__ the positive zener voltage.

The design is a self-biased circuit, that means the zener diode bias current is produced by the zener voltage and therefore as stable as the reference (neglecting the influence of the bias current on the zener voltage, which is negligable). In order to keep the zener current as low possible, a zener current of a little more than 1 mA was chosen.

Reference table for choosing the resistor values:

|Voltage | R1    | R2  | R3  |
|--------|-------|-----|-----|
|-10 V   | 3k    | 9k  | 20k |
|-15 V   | 7.89k | 20k | 17k |

Different values are possible as well, but these values were readily available on Ebay/Farnell/Mouser.

Single supply operation is possible as long the output voltage is larger than 0.1 V.

The OpAmp used is an LTC2057 zero-drift chopper amplifier. The chopping fequency is about 100 kHz. If this noise peak is causing problems, filtering will be required. Alternatively an LT1001 (http://www.linear.com/product/LT1001) could be used.

Related Repositories
--------------------

See the following repositories for more information

KiCAD footprints: https://github.com/PatrickBaus/footprints.pretty

KiCAD 3D models: https://github.com/PatrickBaus/footprints.3dshapes

KiCAD schematic libraries: https://github.com/PatrickBaus/KiCad-libraries

License
-------

This work is released under the Cern OHL v.1.2
See www.ohwr.org/licenses/cern-ohl/v1.2 or the included LICENSE file for more information.
