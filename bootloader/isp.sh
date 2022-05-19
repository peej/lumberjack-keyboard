avrdude -c avrisp -P /dev/cu.usbmodem123451 -p atmega328p -U lfuse:w:0xd7:m -U hfuse:w:0xd0:m -U efuse:w:0xfc:m -U flash:w:lumberjack_via_production.hex:i
