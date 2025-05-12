# Optical Fiber Communication System Simulation

## Title  
**Design and Analysis of an Optical Fiber Communication System using NRZ Encoding, Mach-Zehnder Modulator, and Performance Evaluation Tools**

## Objective  
To simulate a basic optical communication system and evaluate its performance using Bit Error Rate (BER) and Eye Diagram analysis. This lab helps understand signal encoding, modulation, transmission, reception, and quality measurement using OptiSystem.

---

## Description  
This simulation models a simple but realistic fiber-optic communication system. The main stages are:

- Digital data generation  
- Conversion to electrical pulses  
- Optical modulation using CW Laser and MZM  
- Transmission through optical fiber  
- Signal reception and filtering  
- BER and Eye diagram analysis  

---

## Importance of Optical Communication  
- High-speed, long-distance data transmission  
- Low power loss and electromagnetic immunity  
- Used in **telecom**, **data centers**, **military**, and **medical** fields  
- Foundation for **5G**, **FTTH**, **IoT**, and **satellite links**

---

## Applications  
- **Internet Infrastructure** – Undersea cables, ISPs  
- **Telecom Networks** – 4G/5G backhaul, VoIP  
- **Medical** – Laser-based diagnostics  
- **Automation & Control** – High-speed sensor networks  
- **Satellite Communications** – Optical uplinks/downlinks  

---

## 🔍 How This System Works (Step-by-Step)

### 1️⃣ Data Generation
- A **PRBS (Pseudo-Random Bit Sequence Generator)** generates random bits (0s and 1s) to simulate real-world data.

### 2️⃣ Electrical Pulse Shaping
- The random bits go into an **NRZ (Non-Return-to-Zero) Pulse Generator**.
- This converts the bitstream into electrical pulses.

### 3️⃣ Optical Modulation
- A **CW (Continuous Wave) Laser** emits an optical carrier signal.
- A **Mach-Zehnder Modulator (MZM)** receives:
  - Electrical pulses from NRZ
  - Optical signal from CW Laser  
- The MZM modulates the light based on the data → optical signal is created.

### 4️⃣ Transmission Through Fiber
- The optical signal travels through **100 km optical fiber**.
- Signal suffers from:
  - **Dispersion** (pulse broadening)
  - **Attenuation** (power loss)

### 5️⃣ Reception and Filtering
- A **PIN Photodetector** converts the received optical signal back into an electrical signal.
- A **Low Pass Filter (LPF)** removes high-frequency noise to clean the output.

### 6️⃣ Performance Analysis
- **BER Analyzer** compares sent vs. received bits to find the **Bit Error Rate**.
- **Eye Diagram Analyzer** shows signal quality visually.

---

## 📈 Q-Factor & Eye Diagram Explanation

### What is Q-Factor?
- The **Q-Factor** is a measure of signal quality.
- Higher Q means lower bit error rate and better signal clarity.

**Example:**  
If **Q = 8**, it means:
- Signal quality is **good**
- **Eye opening is wide**, indicating minimal distortion

### How to Improve Q-Factor:
- Increase **transmitted power** of the laser
- Use **shorter fiber** or add **optical amplifiers**
- Use **Dispersion Compensation Fiber (DCF)** to reduce pulse spreading
- Choose better **filter bandwidth** to remove noise
- Adjust **bias voltage** and **extinction ratio** of MZM for better modulation

---

## ⚙️ Parameter Effect Summary

| Parameter                 | Change                    | Effect on Q-Factor           |
|--------------------------|---------------------------|------------------------------|
| Laser Power              | ↑ Increase                | ↑ Improves signal strength   |
| Fiber Length             | ↑ Increase                | ↓ More loss & dispersion     |
| Dispersion               | ↑ Increase                | ↓ Pulse overlap, lowers Q    |
| MZM Bias/Extinction      | Improper setting          | ↓ Modulation error           |
| Use of Optical Amplifier | Add after long distance   | ↑ Improves received signal   |

---

## Files in This Repository  
- **optical_fiber_system.osd** → OptiSystem simulation file  
- **system_block_diagram.png** → Block diagram of setup  
- **eye_diagram_result.png** → Result image of Eye Diagram  
- **ber_output.png** → Screenshot of BER Analyzer  
- **readme.md** → This documentation  

---

## Summary  
This project demonstrates how digital data is encoded, converted to light, transmitted over optical fiber, and then recovered at the receiver. We measure system performance using **BER** and **Q-Factor**, helping understand how real-world optical systems behave and how to optimize them.

---

## Follow Me  
For more simulation insights and digital communication projects:  
📲 **Follow me on LinkedIn**  
🤝 Let's connect and grow in the world of tech & telecom! 🚀  

