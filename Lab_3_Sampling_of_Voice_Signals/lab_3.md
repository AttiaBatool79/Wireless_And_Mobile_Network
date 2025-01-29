# **Lab Manual No 03: Sampling of Voice Signals and its Analysis in Frequency Domain**

## **Objective**
Digital Signal Processing starts with converting analog signals into digital signals. The first step is **sampling** the original signal. The amount of processing required depends on the **sampling rate** and **coding procedure**. A **higher sampling rate** improves quality but increases data load, while a **lower rate** reduces data but risks **aliasing**. The **Nyquist limit** defines the minimum sampling rate. This lab focuses on understanding the **sampling process**, aliasing effects, and signal reconstruction.

---

## **Lab Tasks**

### **1. Record an Audio Signal**
- Record voice using MATLAB at **32 kHz** or higher.
- Save the recording as `my_voice.wav`.

#### **MATLAB Code:**
```matlab
Fs = 32000;
recObj = audiorecorder(Fs, 16, 1);
get(recObj)
disp('Start speaking.')
recordblocking(recObj, 5);
disp('End of Recording.')
play(recObj);
myRecording = getaudiodata(recObj);
audiowrite('myvoice.wav', myRecording, Fs);
[y, Fs] = audioread('myvoice.wav');
plot(y)
xlabel('Time')
ylabel('Samples')
title('Signal in Time Domain')
```

---

### **2. Compute DTFT and Plot Magnitude Response**
- Compute **Discrete-Time Fourier Transform (DTFT)**.
- Use `subplot` to plot **time-domain signal** and **DTFT**.

#### **MATLAB Code:**
```matlab
function out = dtft(y)
w = -3*pi:2*pi/512:3*pi;
lenx = length(y);
lenw = length(w);
for i = 1:lenw
    sum = 0;
    for k = 1:lenx
        sum = sum + (y(k) * exp(-1j * w(i) * (k-1)));
    end
    t(i) = sum;
end
plot(w, abs(t)); grid
title('DTFT Magnitude Response')
xlabel('Frequency')
end
```

---

### **3. Decimate the Signal**
- **Downsample** the signal by different factors.
- Observe effects on time-domain and frequency-domain representations.

#### **MATLAB Code:**
```matlab
A = decimate(y, 1);
subplot(4,2,1); plot(A); grid
title('Decimation Factor = 1')

C = decimate(y, 2);
subplot(4,2,3); plot(C); grid
title('Decimation Factor = 2')

a = audioplayer(C, Fs/2);
play(a)
```

---

### **4. Observe Aliasing Effect**
- Further **decimate** the signal until aliasing occurs.
- Compare **magnitude spectrums**.

#### **MATLAB Code:**
```matlab
E = decimate(y, 4);
subplot(4,2,5); plot(E); grid
title('Decimation Factor = 4')

G = decimate(y, 8);
subplot(4,2,7); plot(G); grid
title('Decimation Factor = 8')
```

---

### **5. Interpolate the Signal (Reconstruction)**
- **Upsample** to reconstruct the original signal.
- Compare magnitude response after each interpolation step.

#### **MATLAB Code:**
```matlab
I = interp(y, 8);
subplot(1,2,1); plot(I); grid
title('Interpolation Factor = 8')
```

---

## **Conclusion**
- **Higher sampling rates** preserve quality but increase processing.
- **Aliasing** occurs when the sampling rate is below the Nyquist limit.
- **Interpolation** can reconstruct the original signal but may not fully recover lost details.

---

## **How to Use**
1. Clone the repository:
   ```bash
   git clone https://github.com/YourUsername/Lab_Manuals.git
   cd Lab_Manual_03
   ```
2. Run MATLAB scripts to analyze the effects of sampling, aliasing, and interpolation.

---

## **Author**
This lab manual is maintained by **[Your Name]**. Feel free to connect on **[LinkedIn](#)** or reach out via email: **your.email@example.com**.

