# Lab #06: Frequency Division Multiple Access (FDMA)

## Title
Implementation and Analysis of Frequency Division Multiple Access (FDMA) in Simulink

## Objective
- To understand the concept of FDMA and its role in digital communication.
- To implement FDMA in MATLAB Simulink and analyze frequency-based signal multiplexing and demultiplexing.
- To visualize user signal allocation and retrieval after transmission.

## Introduction
FDMA (Frequency Division Multiple Access) is a channel access method that assigns different frequency bands to multiple users. Each user operates within a specific frequency range, avoiding interference while sharing the same communication medium. FDMA is widely used in **analog and digital communication, cellular networks, and satellite communication**.

### **Real-World Analogy**
Imagine a radio station where different channels broadcast at unique frequencies. Listeners can tune into their desired channel without interference from others. Similarly, FDMA assigns distinct frequency bands to users, enabling simultaneous communication.

## **Importance of FDMA**
- Efficiently utilizes bandwidth by allocating separate frequency bands to multiple users.
- Reduces interference by ensuring users do not overlap in frequency.
- Supports both analog and digital communication.
- Commonly used in **AMPS (1G), satellite systems, and radio broadcasting.**

## **Where is FDMA Used?**
FDMA is used in:
- **Cellular Networks:** First-generation (1G) mobile communication systems.
- **Satellite Communication:** Allocating bandwidth among multiple ground stations.
- **Radio Broadcasting:** AM/FM transmission over distinct frequencies.
- **Military Communication:** Secure and frequency-isolated transmissions.

---

## **Simulink Diagram Explanation**
The FDMA Simulink model consists of multiple components, including signal generation, frequency multiplexing, transmission, demultiplexing, and filtering. Below is a detailed breakdown of each section:

### **1. Signal Generation (User Input Signals)**
- Four different user signals (sine wave and pulse) are generated.
- Each signal is assigned a unique frequency band.

### **2. Frequency Multiplexer (Combining User Signals)**
- The signals from different users are modulated onto different carrier frequencies.
- A frequency multiplexer combines all signals into a single channel.

### **3. Transmission Channel**
- The multiplexed signal is transmitted through a shared medium.
- Represents real-world channels such as radio waves, satellites, or fiber optics.

### **4. Frequency Demultiplexer (Separating Signals Back to Users)**
- The received composite signal is demodulated to extract individual user signals.
- Each user retrieves their original signal from the assigned frequency band.

### **5. Filtering (Removing Noise/Interference)**
- Bandpass filters separate each user's signal and eliminate cross-talk.
- Ensures clear signal reception and minimal distortion.

### **6. Scope Output (Visualization of Signals)**
- **Left-side scopes:** Display input signals before multiplexing.
- **Right-side scopes:** Show signals after demultiplexing, verifying successful transmission.
- **Composite signal scope:** Displays the combined signal before separation.

---

## **Tasks for Lab 5**
### **Task 1: Implement FDMA System in Simulink**
- Generate four different user signals (sine wave and pulse).
- Assign a unique frequency band to each signal.
- Multiplex signals into a single transmission channel.
- Demultiplex signals and observe retrieved outputs.

### **Task 2: Analyze the Effects of Noise & Filtering**
- Introduce noise into the transmission channel.
- Use bandpass filters to clean the demultiplexed signals.
- Compare signal quality before and after filtering.

---

## **Files in This Repository**
- `FDMA.slx` → Simulink model for FDMA implementation.
- `Lab_5__Report.md` → Detailed explanation and observations.
- `FDMA.png` → Screenshot of implementation of FDMA.
- `FDMA_Input01.png` → Screenshot of input SINE signals for all 4 users.
- `FDMA_Input02.png` → Screenshot of input Pulse signals (allocated frequency bands for each user).
- `FDMA_Results.png` → Screenshots of output signals.

---

## **Conclusion**
In this lab, we successfully implemented and analyzed an FDMA system in Simulink. We demonstrated how multiple users share a communication channel efficiently using frequency division and how filtering improves signal quality. FDMA is a crucial technology in **cellular networks, radio broadcasting, and satellite communication**.

### **Key Takeaways:**
- FDMA allows multiple users to share a single channel by assigning unique frequency bands.
- Frequency multiplexing and demultiplexing enable efficient communication.
- Bandpass filtering helps in removing noise and improving signal clarity.

