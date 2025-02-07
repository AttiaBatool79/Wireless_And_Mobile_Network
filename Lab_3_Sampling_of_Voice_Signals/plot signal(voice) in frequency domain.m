% Load the audio file
[y, fs] = audioread('myvoice.wav');
y = y(:, 1); % If stereo, take one channel 

% Time-domain plotting
t = (0:length(y)-1) / fs; % Time vector

% Calculate DTFT
w = -pi:2*pi/512:pi; % Frequency range for one period (-pi to pi)
lenx = length(y); % Length of the audio signal
lenw = length(w); % Number of frequency points
t_dtft = zeros(1, lenw); % Initialize DTFT result

% DTFT calculation
for i = 1:lenw
    sum = 0;
    for k = 1:lenx
        sum = sum + y(k) * exp(-1j * w(i) * (k-1));
    end
    t_dtft(i) = sum;
end

% Magnitude response
magnitude_response = abs(t_dtft);

% Plotting both time and frequency domains
figure;

% Time-domain plot
subplot(2, 1, 1);
plot(t, y);
xlabel('Time (s)');
ylabel('Amplitude');
title('Time-Domain Signal');
grid on;

% Frequency-domain plot (zoomed-in to one period)
subplot(2, 1, 2);
plot(w, magnitude_response);
xlabel('Frequency (rad/sample)');
ylabel('Magnitude');
title('DTFT Magnitude Response (Zoomed-In)');
grid on;
