% Define the time interval
ts = 0.00001;             
t = -0.1:ts:0.1;          
m = exp(-100*abs(t));      
c = cos(2*pi*1000*t);      
s = m + c;                

% Design the filters..
fc_lpf = 500;% Low-pass filter cutoff frequency
fc_bpf = [800 1200];% Band-pass filter cutoff frequencies

[a_lpf, b_lpf] = butter(5, 2*fc_lpf*ts, 'low');  % Low-pass filter
[a_bpf, b_bpf] = butter(5, 2*fc_bpf*ts, 'bandpass');  % Band-pass filter

% Apply the filters
m_recovered = filter(a_lpf, b_lpf, s);  % Extract m(t) using LPF
c_recovered = filter(a_bpf, b_bpf, s);  % Extract c(t) using BPF

% Plot the combined signal in time domain
figure;
subplot(3, 1, 1);
plot(t, s);
title('Combined Signal in Time Domain');
xlabel('Time (s)');
ylabel('Amplitude');

% Plot the recovered signals in time domain
subplot(3, 1, 2);
plot(t, m_recovered);
title('Recovered m(t) using LPF');
xlabel('Time (s)');
ylabel('Amplitude');

subplot(3, 1, 3);
plot(t, c_recovered);
title('Recovered c(t) using BPF');
xlabel('Time (s)');
ylabel('Amplitude');

% Compute the Fourier Transforms
S = abs(fftshift(fft(s)));              % FFT of combined signal
M_rec = abs(fftshift(fft(m_recovered))); % FFT of recovered m(t)
C_rec = abs(fftshift(fft(c_recovered))); % FFT of recovered c(t)

% Frequency axis for plotting
f = linspace(-1/(2*ts), 1/(2*ts), length(t));

% Plot the signals in frequency domain
figure;
subplot(3, 1, 1);
plot(f, S);
title('Combined Signal in Frequency Domain');
xlabel('Frequency (Hz)');
ylabel('Amplitude');

subplot(3, 1, 2);
plot(f, M_rec);
title('Recovered m(t) in Frequency Domain');
xlabel('Frequency (Hz)');
ylabel('Amplitude');

subplot(3, 1, 3);
plot(f, C_rec);
title('Recovered c(t) in Frequency Domain');
xlabel('Frequency (Hz)');
ylabel('Amplitude');
