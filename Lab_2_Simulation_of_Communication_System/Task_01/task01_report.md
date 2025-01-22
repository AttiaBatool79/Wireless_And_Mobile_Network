# Communication System Simulation - Task 01

This project simulates how signals are processed in a communication system using MATLAB. It demonstrates key steps such as signal modulation, rectification, filtering, and frequency analysis. The output includes visual graphs showing how signals are transformed at each stage.

---

## Table of Contents
1. [Introduction](#introduction)  
2. [Overview of the Process](#overview-of-the-process)  
   - [1. Time Definition](#1-time-definition)  
   - [2. Message Signal (`m`)](#2-message-signal-m)  
   - [3. Carrier Signal (`c`)](#3-carrier-signal-c)  
   - [4. Modulation](#4-modulation)  
   - [5. Rectification](#5-rectification)  
   - [6. Filtering](#6-filtering)  
3. [Real-Life Applications](#real-life-applications)  
4. [Output Explanation](#output-explanation)  
5. [Summary](#summary)  

---

## Introduction

In real-life communication systems, like radios or mobile phones, signals are processed to send and receive information effectively. This involves modulating the original message with a carrier signal, processing it, and then filtering out unwanted noise for clear transmission.

This project provides a basic understanding of these steps using a simple mathematical simulation.

---

## Overview of the Process

### 1. **Time Definition**  
- The timeline is created to analyze the signal's behavior over a specific duration.

### 2. **Message Signal (`m`)**  
- Represents the data we want to send, such as voice or text.
- In this example, it is modeled as a decaying function, showing how a signal weakens over time.

### 3. **Carrier Signal (`c`)**  
- A high-frequency signal used to carry the message signal over long distances.
- It ensures the message can travel efficiently.

### 4. **Modulation**  
- Combines the message and carrier signals.  
- This step enables the message to "ride" on the carrier signal for transmission.

### 5. **Rectification**  
- Converts the combined signal into a positive-only form.
- This is similar to how a radio receiver processes the signal to prepare it for filtering.

### 6. **Filtering**  
- Removes noise or unwanted parts from the signal.
- Ensures that only the useful information is retained.

---

## Real-Life Applications

This process is essential in:  
- **Telecommunications**: Transmitting phone calls or internet data.  
- **Radio Broadcasting**: Sending audio signals over long distances.  
- **Medical Devices**: Filtering signals in devices like ECG machines.  

---

## Output Explanation

### Figure 01: Input vs. Output Signal  
- **Input Signal:** The original message signal.  
- **Output Signal:** The filtered signal, showing the cleaned-up version of the transmitted data.

### Figure 02: Frequency Spectra  
1. **Message Signal Spectrum:** Shows the frequency components of the original message.  
2. **Modulated Signal Spectrum:** Shows how the carrier and message signals combine.  
3. **Rectified Signal Spectrum:** Highlights the effect of rectification on the signal's frequency.  
4. **Filtered Signal Spectrum:** Displays the cleaned-up signal, ready for use.

---

## Summary

This simulation provides a basic understanding of how communication systems process and transmit signals. By visualizing each step, we can see how raw data transforms into a clear, usable signal, similar to what happens in real-life systems like radios or mobile networks.
