# Lab #05: Time Division Multiple Access (TDMA)

## Title
Implementation and Analysis of Time Division Multiple Access (TDMA) in Simulink

## Objective
- To understand the concept of TDMA and its role in digital communication.
- To implement TDMA in MATLAB Simulink and analyze signal multiplexing and demultiplexing.
- To visualize user signal allocation and retrieval after transmission.

## Introduction
TDMA (Time Division Multiple Access) is a channel access method used in shared networks. It divides the available bandwidth into time slots and assigns these slots to multiple users, ensuring efficient communication. It is widely used in **mobile networks, satellite communication, and wireless systems**.

### **Real-World Analogy**
Imagine a classroom where each student gets a fixed time slot to speak, ensuring everyone communicates without interruption. Similarly, TDMA allocates time slots to users to share a single channel without interference.

## **Importance of TDMA**
- Efficiently utilizes bandwidth by sharing a single channel among multiple users.
- Reduces signal interference and improves communication quality.
- Used in **wireless, mobile networking, and satellite communications.**
- Supports digital transmission, making it ideal for modern communication networks.

## **Where is TDMA Used?**
TDMA is used in:
- **Wireless Communication:** Mobile networks (GSM, 2G, 3G).
- **Satellite Communication:** Efficient bandwidth sharing among multiple ground stations.
- **Military Communications:** Secure and time-synchronized transmissions.
- **Industrial Automation:** Wireless sensor networks for real-time monitoring.

---

## **Simulink Diagram Explanation**
The TDMA Simulink model consists of multiple components, including signal generation, multiplexing, transmission, demultiplexing, and filtering. Below is a detailed breakdown of each section:

### **1. Signal Generation (User Input Signals)**
- Four different user signals (sine wave and pulse) are generated.
- Each signal is allocated a time slot for transmission.

### **2. Multiplexer (Combining User Signals)**
- The signals from different users are combined into a single channel using a multiplexer.
- This creates a composite wave carrying all user signals.

### **3. Transmission Channel**
- The multiplexed signal is transmitted as a composite waveform.
- The transmission channel represents the communication medium (wireless/satellite/fiber optics).

### **4. Demultiplexer (Separating Signals Back to Users)**
- The received composite signal is demultiplexed into individual user signals.
- Each user gets back their original signal in the assigned time slot.

### **5. Filtering (Removing Noise/Interference)**
- Unwanted high-frequency noise is removed using a low-pass filter.
- Ensures smooth signal reconstruction and enhances clarity.

### **6. Scope Output (Visualization of Signals)**
- **Left-side scopes:** Display input signals before multiplexing.
- **Right-side scopes:** Show signals after demultiplexing, verifying successful transmission.
- **Composite signal scope:** Displays the combined wave before separation.

---

## **Tasks for Lab 5**
### **Task 1: Implement TDMA System in Simulink**
- Generate four different user signals (sine wave and pulse).
- Assign each signal a separate time slot.
- Multiplex signals into a single transmission channel.
- Demultiplex signals and observe retrieved outputs.

### **Task 2: Analyze the Effects of Noise & Filtering**
- Introduce noise into the transmission channel.
- Use a low-pass filter to clean the demultiplexed signals.
- Compare signal quality before and after filtering.

---

## **Files in This Repository**
- `TDMA_Simulink_Model.slx` → Simulink model for TDMA implementation.
- `TDMA_Analysis_Report.md` → Detailed explanation and observations.
- `TDMA_Results.png` → Screenshots of input/output signals.

---

## **Conclusion**
In this lab, we successfully implemented and analyzed a TDMA system in Simulink. We demonstrated how multiple users share a communication channel efficiently and how filtering improves signal quality. TDMA is a crucial technology in **mobile networking, satellite systems, and digital communication**.

### **Key Takeaways:**
- TDMA allows multiple users to share a single channel using time slots.
- Multiplexing and demultiplexing enable efficient communication.
- Filtering helps in removing noise, ensuring better signal reception.



