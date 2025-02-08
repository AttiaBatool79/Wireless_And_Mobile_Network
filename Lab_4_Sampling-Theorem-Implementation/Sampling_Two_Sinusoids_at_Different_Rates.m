clc; clear; close all;

% Define time range
t = -2:0.001:2; % Continuous time

% Define frequencies
F1 = 1; % 1 Hz
F2 = 3; % 3 Hz

% Generate continuous sinusoidal signals
x1 = sin(2 * pi * F1 * t); 
x2 = sin(2 * pi * F2 * t);

% Plot original signals
figure;
subplot(2,1,1);
plot(t, x1, 'b');
title('Continuous Sinusoid - F1 = 1Hz');
xlabel('Time (s)'); ylabel('Amplitude'); grid on;

subplot(2,1,2);
plot(t, x2, 'r');
title('Continuous Sinusoid - F2 = 3Hz');
xlabel('Time (s)'); ylabel('Amplitude'); grid on;

% Sampling for different rates
Fs1 = [F1, 2*F1, 3*F1]; % Sampling rates for Signal 1
Fs2 = [F2, 2*F2, 4*F2]; % Sampling rates for Signal 2

figure;
for i = 1:length(Fs1)
    Ts1 = 1/Fs1(i); 
    n1 = -2:Ts1:2; % Discrete time
    sampled_x1 = sin(2 * pi * F1 * n1);
    
    subplot(3,2,2*i-1);
    stem(n1, sampled_x1, 'b');
    hold on; plot(t, sin(2 * pi * F1 * t), 'g--'); hold off;
    title(['Signal 1 Sampled at Fs = ', num2str(Fs1(i))]);
    xlabel('Time (s)'); ylabel('Amplitude'); grid on;
end

for i = 1:length(Fs2)
    Ts2 = 1/Fs2(i);
    n2 = -2:Ts2:2;
    sampled_x2 = sin(2 * pi * F2 * n2);
    
    subplot(3,2,2*i);
    stem(n2, sampled_x2, 'r');
    hold on; plot(t, sin(2 * pi * F2 * t), 'b--'); hold off;
    title(['Signal 2 Sampled at Fs = ', num2str(Fs2(i))]);
    xlabel('Time (s)'); ylabel('Amplitude'); grid on;
end

disp('Observe aliasing and resolution changes with different sampling rates.');
