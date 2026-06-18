# ================================================================
# Compiler Configuration
# ================================================================
CC       = avr-gcc
OBJCOPY  = avr-objcopy
MCU      = atmega32
F_CPU    = 8000000UL

# Include directories
INC = -I./LIB \
      -I./MCAL/DIO \
      -I./MCAL/ADC \
      -I./MCAL/EXTI \
      -I./HAL/LED \
      -I./HAL/LCD \
      -I./HAL/LM35 \
      -I./HAL/Buzzer \
      -I./APP

# Compiler Flags
CFLAGS = -Wall -Os -mmcu=$(MCU) -DF_CPU=$(F_CPU) $(INC) -MMD -MP

# ================================================================
# Source Files
# ================================================================
SRC = main.c \
      MCAL/DIO/DIO.c \
      MCAL/ADC/ADC.c \
      MCAL/EXTI/EXTI.c \
      HAL/LED/LED.c \
      HAL/LCD/LCD.c \
      HAL/LM35/LM35.c \
      HAL/Buzzer/BUZ.c \
      APP/SmartHome.c

OBJ = $(SRC:.c=.o)

# ================================================================
# Output Files
# ================================================================
TARGET = SmartHome

# ================================================================
# Build Rules
# ================================================================
all: $(TARGET).hex

$(TARGET).elf: $(OBJ)
	$(CC) $(CFLAGS) -o $@ $^
	@echo "ELF generated: $@"

$(TARGET).hex: $(TARGET).elf
	$(OBJCOPY) -O ihex -R .eeprom $< $@
	@echo "HEX generated: $@"

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@
	@echo "Compiled: $<"

# Include auto-generated dependency files
-include $(OBJ:.o=.d)

# ================================================================
# Flash
# ================================================================
flash: $(TARGET).hex
	avrdude -c usbasp -p m32 -U flash:w:$(TARGET).hex

# ================================================================
# Clean
# ================================================================
clean:
	rm -f $(OBJ) $(OBJ:.o=.d) $(TARGET).elf $(TARGET).hex

# ================================================================
# Help
# ================================================================
help:
	@echo "make        -> Build project"
	@echo "make flash  -> Flash to MCU"
	@echo "make clean  -> Remove build files"
	@echo "make help   -> Show commands"

.PHONY: all flash clean help