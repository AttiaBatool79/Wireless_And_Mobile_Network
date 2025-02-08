clc; clear; close all;

% Define time
Fs = 1000;
t = 0:1/Fs:1;

% Sinusoidal signal (2 Hz)
x = sin(2 * pi * 2 * t);

% Carrier signal (10 Hz)
carrier = square(2 * pi * 10 * t, 50);

% Natural sampling
sampled_signal = x .* (carrier > 0);

% Plot results
subplot(3,1,1);
plot(t, x, 'b'); title('2 Hz Sinusoidal Signal');

subplot(3,1,2);
plot(t, carrier, 'r'); title('10 Hz Carrier Signal');

subplot(3,1,3);
plot(t, sampled_signal, 'g'); title('Natural Sampled Signal');
