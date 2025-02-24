# QPSK Modulation and Demodulation

## Title
Quadrature Phase Shift Keying (QPSK) Modulation and Demodulation in MATLAB

## Objective
- Understand how QPSK works in digital communication.
- Implement QPSK modulation and demodulation using MATLAB.
- Visualize how data is modulated and then recovered.

## Introduction
QPSK (Quadrature Phase Shift Keying) is a digital modulation technique where data is encoded by shifting the phase of a carrier wave in four different ways: **0°, 90°, 180°, and 270°**.

Each phase shift represents **two bits** of data, making QPSK more efficient than BPSK (which only represents one bit per symbol).

## Real-World Example
Imagine a traffic light with four colors instead of just red and green. Each color represents a different action for drivers. Similarly, in QPSK, each phase shift represents a different data combination (00, 01, 10, 11).

## Importance of QPSK
- **Sends more data efficiently** by encoding 2 bits per symbol.
- **More noise-resistant** than other methods like BPSK.
- **Used in modern communication** like Wi-Fi, 4G, and satellite systems.

## How QPSK Works
1. **Data Preparation:** Convert binary data into a signal form.
2. **Modulation:** Split data into two parts (I & Q), then multiply with cosine and sine waves.
3. **Transmission:** Send the modulated signal over a communication channel.
4. **Demodulation:** Reverse the modulation process to recover original data.

---

## Code Breakdown
### 1. Initialization
```matlab
clc;
clear all;
close all;
```
- `clc;` → Clears the command window.
- `clear all;` → Removes variables from memory.
- `close all;` → Closes all figures.

### 2. Define Input Data
```matlab
data=[0 1 0 1 1 1 0 0 1 1 0 1 1 1 1 1 1 1]; % Input data
```
- A binary sequence that will be modulated using QPSK.

### 3. Convert Data for Modulation
```matlab
data_NZR=2*data-1; % Convert binary to NRZ format (-1 and 1)
s_p_data=reshape(data_NZR,2,length(data)/2); % Convert to parallel form
```
- `NRZ` (Non-Return to Zero) conversion ensures that `0` becomes `-1` and `1` stays `1`.
- Data is split into **pairs of two** (since QPSK encodes two bits per symbol).

### 4. Define Transmission Parameters
```matlab
br=10.^6; % Bit rate
f=br; % Carrier frequency
T=1/br; % Bit duration
t=T/99:T/99:T; % Time vector
```
- **Bit rate (`br`)** = 1 Mbps (million bits per second).
- **Carrier frequency (`f`)** = Bit rate (1 MHz).
- **Bit duration (`T`)** = Time required to send 1 bit.

### 5. QPSK Modulation
```matlab
y=[]; y_in=[]; y_qd=[];
for(i=1:length(data)/2)
    y1=s_p_data(1,i)*cos(2*pi*f*t); % In-phase component
    y2=s_p_data(2,i)*sin(2*pi*f*t); % Quadrature component
    y_in=[y_in y1];
    y_qd=[y_qd y2];
    y=[y y1+y2]; % QPSK modulated signal
end
```
- **Two carriers (cos and sin) are used** to modulate data.
- **In-phase (`y1`)** → Multiplies with cosine.
- **Quadrature (`y2`)** → Multiplies with sine.
- **Final signal (`y`)** → Combination of both components.

### 6. Plot the Modulated Signal
```matlab
figure(2)
subplot(3,1,1);
plot(tt,y_in,'linewidth',3), grid on;
title('In-phase Component');
subplot(3,1,2);
plot(tt,y_qd,'linewidth',3), grid on;
title('Quadrature Component');
subplot(3,1,3);
plot(tt,Tx_sig,'r','linewidth',3), grid on;
title('QPSK Modulated Signal');
```
- Displays **three plots**:
  1. **In-phase signal**
  2. **Quadrature signal**
  3. **Combined QPSK signal**

### 7. QPSK Demodulation
```matlab
for(i=1:1:length(data)/2)
    Z_in=Rx_sig((i-1)*length(t)+1:i*length(t)).*cos(2*pi*f*t);
    Z_in_intg=(trapz(t,Z_in))*(2/T);
    if(Z_in_intg>0) Rx_in_data=1; else Rx_in_data=0; end

    Z_qd=Rx_sig((i-1)*length(t)+1:i*length(t)).*sin(2*pi*f*t);
    Z_qd_intg=(trapz(t,Z_qd))*(2/T);
    if (Z_qd_intg>0) Rx_qd_data=1; else Rx_qd_data=0; end

    Rx_data=[Rx_data  Rx_in_data  Rx_qd_data];
end
```
- **Multiplies the received signal with cosine and sine carriers** to extract in-phase and quadrature data.
- **Integration (`trapz`)** estimates the area under the curve (signal energy detection).
- **Decision maker**: If integration result > 0, bit is `1`, else `0`.

### 8. Plot Received Data
```matlab
figure(3)
stem(Rx_data,'linewidth',3)
title('Received Information');
```
- Displays the **recovered data** after demodulation.

---

## Files in This Repository
- `QPSK.m` → MATLAB script for QPSK modulation & demodulation.
- `QPSK_Modulated.png` → Screenshot of QPSK signal.
- `QPSK_Received.png` → Screenshot of received data after demodulation.

## Conclusion
In this project, we implemented **QPSK Modulation and Demodulation** in MATLAB. We showed how data is converted into a phase-shifted signal and recovered successfully.

### Key Takeaways:
- **QPSK uses phase shifts (0°, 90°, 180°, 270°) to send 2 bits per symbol.**
- **Multiplication with cosine and sine waves creates in-phase and quadrature signals.**
- **Demodulation is done using integration and decision-making.**
- **QPSK is widely used in digital communication (Wi-Fi, 4G, satellites).**


