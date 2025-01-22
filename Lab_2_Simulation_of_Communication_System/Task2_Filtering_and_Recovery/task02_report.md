


# Output Analysis for Task 2: Filtering and Recovery

This document explains the results and observations of Task 2: Filtering and Recovery, as demonstrated by the provided figures. The task involves analyzing the combined signal, recovering the message signal \(m(t)\) using a low-pass filter (LPF), and recovering the carrier signal \(c(t)\) using a band-pass filter (BPF).

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

