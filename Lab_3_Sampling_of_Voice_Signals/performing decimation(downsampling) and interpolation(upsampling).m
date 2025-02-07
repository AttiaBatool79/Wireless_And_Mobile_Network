% Load the audio file
[y, fs] = audioread('myvoice.wav'); % Replace with your file name
y = y(:, 1); % If stereo, take one channel (e.g., the first channel)

% Time vector for the original signal
t_original = (0:length(y)-1) / fs;

% Frequency vector for DTFT
N_fft = 1024; % Number of FFT points
w = linspace(-pi, pi, N_fft); % Frequency vector matching FFT length

% User-defined function to compute DTFT
compute_dtft = @(signal) abs(fftshift(fft(signal, N_fft))); % Magnitude of DTFT

% Decimation factors
decimation_factors = [4, 8, 16 32];

% Initialize a figure
figure;

% Plot the original signal in time domain
subplot(4, 2, 1);
plot(t_original, y, 'b');
xlabel('Time (s)');
ylabel('Amplitude');
title('Original Signal (Time Domain)');
grid on;

% Plot the original signal in frequency domain
subplot(4, 2, 2);
plot(w, compute_dtft(y), 'b');
xlabel('Frequency (rad/sample)');
ylabel('Magnitude');
title('Original Signal (Frequency Domain)');
grid on;

% Process and plot decimated signals
for i = 1:length(decimation_factors)
    M = decimation_factors(i); % Current decimation factor
    y_decimated = decimate(y, M); % Decimate the signal
    fs_decimated = fs / M; % New sampling rate
    t_decimated = (0:length(y_decimated)-1) / fs_decimated; % Time vector for decimated signal
    sound(y_decimated, fs_decimated); % Play the decimated signal
pause(length(y_decimated) / fs_decimated + 1); % Wait before playing the next one

    
    % Time domain plot
    subplot(5, 2, 2*i+1);
    plot(t_decimated, y_decimated, 'r');
    xlabel('Time (s)');
    ylabel('Amplitude');
    title(['Decimated Signal (Time Domain, M = ', num2str(M), ')']);
    grid on;
    
    % Frequency domain plot
    subplot(5, 2, 2*i+2);
    plot(w, compute_dtft(y_decimated), 'r');
    xlabel('Frequency (rad/sample)');
    ylabel('Magnitude');
    title(['Decimated Signal (Frequency Domain, M = ', num2str(M), ')']);
    grid on;
end


% Load the audio file
[y, fs] = audioread('myvoice.wav'); 
y = y(:, 1); % If stereo, take one channel (e.g., the first channel)

% Time vector for the original signal
t_original = (0:length(y)-1) / fs;

% Frequency vector for DTFT
N_fft = 1024; % Number of FFT points
w = linspace(-pi, pi, N_fft); % Frequency vector matching FFT length

% User-defined function to compute DTFT
compute_dtft = @(signal) abs(fftshift(fft(signal, N_fft))); % Magnitude of DTFT

% Define upsampling factors
upsampling_factors = [16, 32,64, 128]; % Factors for interpolation

% Initialize a figure for interpolation results
figure;

% Process and plot interpolated signals
for j = 1:length(upsampling_factors)
    L = upsampling_factors(j); % Current upsampling factor
    y_interpolated = interp(y_decimated, L); % Upsample the decimated signal
    fs_interpolated = fs_decimated * L; % New sampling rate
    t_interpolated = (0:length(y_interpolated)-1) / fs_interpolated; % Time vector

    % Time domain plot
    subplot(4, 2, 2*j-1);
    plot(t_interpolated, y_interpolated, 'g');
    xlabel('Time (s)');
    ylabel('Amplitude');
    title(['Interpolated Signal (L = ', num2str(L), ') - Time Domain']);
    grid on;

    % Frequency domain plot
    subplot(4, 2, 2*j);
    plot(w, compute_dtft(y_interpolated), 'g');
    xlabel('Frequency (rad/sample)');
    ylabel('Magnitude');
    title(['Interpolated Signal (L = ', num2str(L), ') - Frequency Domain']);
    grid on;

    % Play the interpolated signal
    sound(y_interpolated, fs_interpolated);
    pause(length(y_interpolated) / fs_interpolated + 1); % Pause before next sound
end


