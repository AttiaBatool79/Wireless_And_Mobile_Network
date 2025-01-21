# Lab 2: Simulation of Communication Systems Using MATLAB  
 
This repository contains the resources and implementation for **Lab 2: Simulation of Communication Systems** in the context of **Wireless and Mobile Networks**. The lab demonstrates the simulation of basic communication systems using MATLAB, focusing on signal generation, manipulation, and analysis.  

---

## Objectives  
The main objectives of this lab are:  
1. To understand the basic tools and concepts for simulating communication systems.  
2. To learn the fundamentals of signal manipulation using MATLAB.  
3. To analyze communication signals in both time and frequency domains.  

---

## Lab Contents  

### **Case Study:**
The lab demonstrates a MATLAB program to simulate a communication system. Key components include:  
- Defining input signals `m(t)` and `c(t)`.  
- Performing multiplication and full-wave rectification.  
- Designing and applying a Low Pass Filter (LPF).  
- Visualizing signals in time and frequency domains using Fast Fourier Transform (FFT).  

**Key MATLAB Features Used:**  
- Signal generation (`exp`, `cos`).  
- Filtering (`butter`, `filter`).  
- Fourier Transform (`fft`, `fftshift`).  
- Plotting and visualization (`plot`, `subplot`).  

---

### **Lab Tasks**  
1. **Task 1: Basic System Simulation**  
   - Create and run the provided MATLAB code to produce figures showing time-domain and frequency-domain representations of input and output signals.  

2. **Task 2: Parameter Modification**  
   - Modify the signals and parameters as follows:  
     - Change  `m(t)` to 2 + sin(2π × 1000 × t).  
     - Change  `c(t)` to cos(2π × 10⁴ × t).
     - Set the cutoff frequency of the filter to 2 kHz.  
   - Re-run the simulation and analyze the results.  

3. **Task 3: Signal Addition and Separation**  
   - Add signals m(t) = e^(-100|t|) , c(t) = cos(2π × 10³ × t)
   - Separate them using LPF and Band Pass Filter (BPF).  
   - Provide the MATLAB code and plots showing:  
     - The combined signal in time and frequency domains.  
     - Each recovered signal in time and frequency domains.  

---

## Installation and Setup  
1. Install MATLAB (version 2019 or later recommended).  
2. Clone this repository:  
   ```bash
   git clone https://github.com/AttiaBatool79/Wireless_And_Mobile_Network.git
   cd Wireless_And_Mobile_Network

