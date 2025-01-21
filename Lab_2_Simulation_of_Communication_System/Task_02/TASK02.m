% Define the time interval
ts=0.00001;
t= -0.1:ts:0.1;
 
% Define the functions m(t) and c(t)
m=2+sin(2*pi*1000*t);
c=cos(2*pi*10*exp(4));
% Performe the multiplication
g=m.*c;
 
% Perform full-wave rectification
y=abs(g);
 
% Create the filter
cutoff=1000;
[a b]=butter(5,2*cutoff*ts);
 
% Get the output after the filter;
z=filter(a,b,y);
 
% Plot the input and output on the same graph
figure (1)
plot(t,m,t,z);
legend('Input Signal','Output Signal')
xlabel ('time')
ylabel('amplitude')
title ('Case Study')
 
% Finding the FT of the signals
M=abs(fftshift(fft(m)));
G=abs(fftshift(fft(g)));
Y=abs(fftshift(fft(y)));
Z=abs(fftshift(fft(z)));
 
% Creating the vector for the frequency axis
f=[-length(t)/2:length(t)/2-1]/(length(t)*ts);
 
% Plotting all FT on one sheet, in a 2x2 matrix format
figure(2)
subplot(2, 2, 1)
plot(f, M)
title('Magnitude Spectrum of m(t)')
xlabel('Frequency (Hz)')
ylabel('Magnitude')

title('Magnitude Spectrum of m(t)')

subplot(2, 2, 2)
plot(f, G)
title('Magnitude Spectrum of g(t)')
xlabel('Frequency (Hz)')
ylabel('Magnitude')

subplot(2, 2, 3)
plot(f, Y)
title('Magnitude Spectrum of y(t)')
xlabel('Frequency (Hz)')
ylabel('Magnitude')

subplot(2, 2, 4)
plot(f, Z)
title('Magnitude Spectrum of z(t)')
xlabel('Frequency (Hz)')
ylabel('Magnitude')

