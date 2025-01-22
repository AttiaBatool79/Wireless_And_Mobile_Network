# Filtering and Recovery of Signals

This task demonstrates the filtering and recovery of components from a combined signal. The script uses MATLAB to separate two components of a signal: a modulated signal `m(t)` and a carrier signal `c(t)`, using low-pass and band-pass filters.

## Overview

The signal processing workflow includes:
1. Generation of a combined signal `s(t)` containing:
   - `m(t)`: A modulated signal.
   - `c(t)`: A carrier signal.
2. Designing and applying filters:
   - **Low-pass filter (LPF)** to extract `m(t)`.
   - **Band-pass filter (BPF)** to extract `c(t)`.
3. Visualization of the results in both the time and frequency domains.

## Script Breakdown

### Signal Generation
- **Time Interval**: The signal is sampled with a resolution of `ts = 0.00001`.
- **Signals**:
  - `m(t)`: An exponentially decaying signal, `exp(-100*abs(t))`.
  - `c(t)`: A cosine carrier signal, `cos(2*pi*1000*t)`.
- **Combined Signal**: The signals are summed to form `s(t) = m(t) + c(t)`.

### Filter Design
1. **Low-Pass Filter (LPF)**:
   - Cutoff frequency: `500 Hz`.
   - Designed using a 5th-order Butterworth filter.
2. **Band-Pass Filter (BPF)**:
   - Passband frequencies: `800-1200 Hz`.
   - Designed using a 5th-order Butterworth filter.

### Filtering and Recovery
- The LPF and BPF are applied to `s(t)`:
  - LPF extracts `m(t)`.
  - BPF extracts `c(t)`.

### Visualization
- Time-domain plots:
  - Combined signal `s(t)`.
  - Recovered signals `m(t)` and `c(t)`.
- Frequency-domain plots:
  - Magnitude spectra of the combined and recovered signals.

## How to Use

1. **Dependencies**:
   - MATLAB (any recent version should work).
   - Signal Processing Toolbox (for the Butterworth filter).

2. **Running the Script**:
   - Save the provided MATLAB code in a file, e.g., `filtering_recovery.m`.
   - Run the script in MATLAB.

3. **Output**:
   - Time-domain and frequency-domain plots for the combined and recovered signals.

## Results

The script demonstrates:
- Effective separation of `m(t)` and `c(t)` using filters.
- Visualization of signal recovery accuracy in both time and frequency domains.

## Example Plots

### Time Domain
1. Combined signal `s(t)`.
2. Recovered `m(t)` using LPF.
3. Recovered `c(t)` using BPF.

### Frequency Domain
1. Magnitude spectrum of `s(t)`.
2. Magnitude spectrum of recovered `m(t)`.
3. Magnitude spectrum of recovered `c(t)`.


# Output Analysis 

## Figure 01: Time Domain Analysis

1. **Combined Signal in Time Domain:**
   - The top plot shows the combined signal in the time domain.
   - It is the result of modulation, where the message signal \(m(t)\) is embedded within the carrier signal \(c(t)\).
   - The oscillations represent the high-frequency carrier signal modulated by the message signal.

2. **Recovered \(m(t)\) Using LPF:**
   - The middle plot shows the recovered message signal \(m(t)\) after passing the combined signal through a low-pass filter.
   - The signal resembles the original message signal, indicating successful recovery of \(m(t)\).

3. **Recovered \(c(t)\) Using BPF:**
   - The bottom plot displays the recovered carrier signal \(c(t)\) after applying a band-pass filter to the combined signal.
   - This process isolates the carrier signal for further analysis or demodulation.

---

## Figure 2: Frequency Domain Analysis


1. **Combined Signal in Frequency Domain:**
   - The top plot shows the combined signal in the frequency domain.
   - The presence of spectral components around the carrier frequency confirms the modulation process.

2. **Recovered \(m(t)\) in Frequency Domain:**
   - The middle plot represents the frequency spectrum of the recovered message signal \(m(t)\).
   - The low-frequency components are successfully preserved, indicating accurate recovery.

3. **Recovered \(c(t)\) in Frequency Domain:**
   - The bottom plot shows the frequency spectrum of the recovered carrier signal \(c(t)\).
   - The band-pass filter effectively isolates the high-frequency carrier components.

---

## Conclusion:

The filtering and recovery process successfully demodulated the combined signal and retrieved both the message and carrier signals. The results from the time and frequency domains confirm the accuracy of the applied low-pass and band-pass filtering techniques. This validates the effectiveness of the implemented signal recovery method.

