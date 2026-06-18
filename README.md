# 🏠 Smart Home System - ATmega32

> ⚠️ **Work in Progress**  
> This project is currently under development and not yet completed.  
> New features, modules, and improvements will be added continuously.

---

## 📖 Overview

Smart Home System is an embedded systems project built using **ATmega32 Microcontroller**.  
The project simulates a basic smart home controller capable of monitoring temperature, controlling lighting, and triggering alerts based on environmental conditions.

The main goal of this project is to apply embedded systems concepts using layered architecture (**MCAL / HAL / APP**) and build reusable drivers.

---

## 🎯 Current Objectives

- Control home lighting using push buttons
- Monitor room temperature using LM35 sensor
- Display system status on LCD
- Trigger alert system when temperature exceeds safe limits
- Practice modular embedded software design

---

## 🛠️ Hardware Components

| Component | Port/Pin | Description |
|----------|----------|-------------|
| LED1 | PORTA0 | Room Light |
| LED2 | PORTA1 | Kitchen Light |
| LED3 | PORTA2 | Garden Light |
| Button1 | PORTB0 | Toggle Room Light |
| Button2 | PORTB1 | Toggle Kitchen Light |
| Button3 | PORTB2 | Toggle Garden Light |
| LM35 Sensor | ADC0 | Temperature Measurement |
| LCD | PORTC | System Display |
| Buzzer | PORTD0 | Alarm System |

---

## ✨ Implemented Features

- [x] Basic project structure
- [x] Layered architecture setup
- [x] GPIO driver integration
- [ ] Button control logic
- [ ] LED control system
- [ ] ADC temperature reading
- [ ] LM35 driver
- [ ] LCD display integration
- [ ] Alert system implementation
- [ ] System state management
- [ ] Final system testing

---

## 🧠 Software Architecture

This project follows a layered architecture:

```text
SmartHome_ATMega32/
│── APP/        # Application logic
│── HAL/        # Hardware abstraction layer
│── MCAL/       # Microcontroller abstraction layer
│── LIB/        # Common libraries
│── main.c      # Main entry point
```

---

## 🔧 MCAL Drivers

Planned drivers:

- DIO (GPIO)
- ADC
- EXTI
- TIMER *(coming soon)*

---

## 🔌 HAL Drivers

Planned hardware abstraction modules:

- LED Driver
- Button Driver
- LCD Driver
- LM35 Driver
- Buzzer Driver

---

## 🚨 System Behavior

### Normal Mode
- LEDs controlled manually using buttons
- LCD displays current temperature
- Buzzer remains OFF

### Alert Mode
Activated when temperature exceeds **40°C**

Actions:
- Buzzer turns ON
- LEDs blink continuously
- LCD displays warning message

---

## 🚀 Future Improvements

Planned upgrades:

- Fan control system
- EEPROM settings storage
- UART monitoring
- Bluetooth control
- Motion detection system
- LDR automatic lighting
- Security mode

---

## 🛠️ Development Environment

- Microcontroller: ATmega32
- Language: C
- IDE: Atmel Studio / VS Code
- Compiler: AVR-GCC
- Simulation: Proteus

---

## 🚀 Build Instructions

```bash
git clone https://github.com/mohamed-dev222/SmartHome_ATMega32.git
```

1. Open project in Atmel Studio or AVR-GCC
2. Build project
3. Flash to ATmega32
4. Test on hardware or Proteus simulation

---

## 📌 Project Status

Current Status:

```text
In Development 🛠️
```

Completion Progress:

```text
[■■■■□□□□□□] 40%
```

---

## 👨‍💻 Author

**Mohamed**

GitHub: [mohamed-dev222](https://github.com/mohamed-dev222)

---

## 📅 Started

2026

---

## 🏷️ Tags

`embedded-systems` `avr` `atmega32` `smart-home` `c-programming` `microcontrollers`