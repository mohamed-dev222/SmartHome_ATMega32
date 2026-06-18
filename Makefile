# Compiler and flags
CC = avr-gcc
CFLAGS = -Wall -Os -mmcu=atmega32 -DF_CPU=8000000UL
LDFLAGS = -mmcu=atmega32

# Source files
SRC = main.c \
      MCAL/DIO/DIO.c \
      MCAL/ADC/ADC.c \
      HAL/LED/LED.c \
      HAL/LCD/LCD.c \
      HAL/LM35/LM35.c \
      HAL/Buzzer/Buzzer.c \
      APP/SmartHome.c

# Output
TARGET = SmartHome

all: $(TARGET).hex

$(TARGET).elf: $(SRC)
	$(CC) $(CFLAGS) $(LDFLAGS) -o $@ $^

$(TARGET).hex: $(TARGET).elf
	avr-objcopy -O ihex -R .eeprom $< $@

flash: $(TARGET).hex
	avrdude -c usbasp -p m32 -U flash:w:$(TARGET).hex

clean:
	rm -f $(TARGET).elf $(TARGET).hex *.o

.PHONY: all flash clean