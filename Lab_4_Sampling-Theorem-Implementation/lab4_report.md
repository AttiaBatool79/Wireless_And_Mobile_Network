# Lab #04: Sampling Theorem Implementation

## Title
**Analysis and Implementation of Sampling Theorem (Nyquist Criteria, Under Sampling, Over Sampling), Impulse and Natural Sampling**

## Objective
To understand and implement the sampling theorem using Nyquist criteria and analyze aliasing effects. 

## Description
Sampling a continuous-time signal **x(t)** involves representing it at discrete points **t = nTs**, where **Ts** is the sampling period. 

The sampling theorem states that a band-limited signal **x(t)** with bandwidth **W** can be reconstructed from its sampled values **x[n] = x(nTs)** if the sampling frequency **fs = 1/Ts** is greater than twice the bandwidth **W** of **x(t)**. Otherwise, aliasing occurs. The minimum sampling rate **2W** is called the Nyquist rate. 

A continuous-time (CT) sinusoid containing a maximum frequency of **Fmax** must be sampled at **Fs > 2Fmax** (Nyquist Rate) to avoid aliasing. If **Fs** is greater than the Nyquist Rate, the CT sinusoid can be uniquely recovered from its discrete-time (DT) version.

## 🌟 Importance of Sampling  
- Sampling is a fundamental concept in **digital signal processing (DSP)**, enabling real-world signals to be processed by digital systems. 
- It is essential in **communications, audio processing, biomedical engineering, and control systems**.  
- Proper sampling ensures **accurate signal reconstruction**, avoiding aliasing and distortion.

## 🔧 Applications  
Sampling has widespread applications in various fields, including:  
- **Telecommunications** – Digital voice transmission (VoIP, mobile networks).  
- **Audio Processing** – Converting analog sound to digital formats (MP3, WAV).  
- **Biomedical Engineering** – ECG and MRI signal processing.  
- **Automotive Systems** – Sensor data acquisition in self-driving cars.  
- **Control Systems** – Digital controllers and industrial automation.  
---


## Lab 04 Tasks

### Task 1:
1. Take two sinusoidal signals of different frequencies:
   - **F1 = 1Hz**
   - **F2 = 3Hz**
2. Using MATLAB, plot both signals for a time range of **-2 sec to 2 sec**.
3. Sample **Signal 1** at **Fs = F1, 2F1, and 3F1**.
4. Sample **Signal 2** at **Fs = F2, 2F2, and 4F2**.
5. Analyze the effects of up-sampling, down-sampling, and aliasing.
6. Implement **impulse sampling** for these signals.

### Task 2:
1. Take a sinusoidal signal with a frequency of **2Hz**.
2. Sample this signal at a frequency of **10Hz** using **natural sampling**.
3. Implement the MATLAB code for natural sampling.
4. The output must include three graphs:
   - The first graph shows the sinusoidal signal (**2Hz**) for **t = 0 to 1 sec**.
   - The second graph shows the **rectangular carrier signal** with a frequency of **10Hz**.
   - The third graph shows the **natural sampled signal**.

---

## Files in This Repository
- **Natural_Sampling_of_a_Sinusoid.m** → MATLAB code for natural sampling
- **Sampling_Two_Sinusoids_at_Different_Rates.m** → MATLAB code for different sampling rates
- **lab4_report.md** → Detailed report on this lab
- **Images**
  - **natural_sampling.png** → Graph for natural sampling
  - **sampling_two_signals.png** → Graph for sampled signals
  - **two_signals_time_domain.png** → Time domain representation of signals

---



