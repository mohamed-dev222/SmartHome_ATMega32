# 📋 Smart Home System - Project Requirements

## 📖 Project Purpose

The purpose of this project is to design and implement a basic Smart Home embedded system using the **ATmega32 Microcontroller**.

This project aims to simulate real-world home automation features while applying layered embedded software architecture.

---

## 🎯 Functional Requirements

### 1. Lighting Control
The system shall:

- Control 3 independent LEDs representing home lights
- Allow manual ON/OFF control using push buttons
- Maintain the current state of each light

---

### 2. Temperature Monitoring
The system shall:

- Read temperature values using LM35 sensor
- Convert analog readings using ADC
- Display temperature on LCD in real time

---

### 3. Display System Status
The LCD shall display:

- Current temperature
- Current system mode
- Alert messages when needed

Example:

```text
Temp: 28C
Mode: NORMAL
```

---

### 4. Alert System
When temperature exceeds **40°C**:

The system shall:

- Activate buzzer
- Enter alert mode
- Blink all LEDs continuously
- Display warning message on LCD

Example:

```text
WARNING!
HIGH TEMP
```

---

## 🛠️ Non-Functional Requirements

The project must:

- Follow modular layered architecture
- Use reusable drivers
- Keep code readable and maintainable
- Minimize hardware dependency in APP layer
- Support easy scalability

---

## 🧠 Software Requirements

### MCAL Layer
Required drivers:

- DIO Driver
- ADC Driver
- EXTI Driver
- TIMER Driver *(future enhancement)*

---

### HAL Layer
Required modules:

- LED Driver
- LCD Driver
- LM35 Driver
- Buzzer Driver

---

### APP Layer

Responsibilities:

- System logic control
- State management
- Device coordination

---

## ⚙️ System Modes

### Normal Mode

Conditions:

```text
Temperature <= 40°C
```

Behavior:

- Buttons control LEDs normally
- LCD shows temperature
- Buzzer OFF

---

### Alert Mode

Conditions:

```text
Temperature > 40°C
```

Behavior:

- Buzzer ON
- LEDs blinking
- Warning displayed

---

## 🔌 Hardware Requirements

| Component | Quantity |
|----------|----------|
| ATmega32 | 1 |
| LEDs | 3 |
| Push Buttons | 3 |
| LM35 Sensor | 1 |
| LCD 16x2 | 1 |
| Buzzer | 1 |
| Resistors | Multiple |
| Power Supply | 5V |

---

## 🚀 Future Enhancements

Planned upgrades:

- Fan control
- EEPROM settings storage
- UART monitoring
- Bluetooth module
- Motion detection
- LDR-based lighting
- Security system integration

---

## 📌 Project Status

Current state:

```text
Planning + Initial Development
```

Estimated completion:

```text
40%
```