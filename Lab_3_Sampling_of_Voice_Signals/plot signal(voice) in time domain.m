Fs=32000;
recObj = audiorecorder(Fs, 16, 1);
get(recObj)
% Record your voice for 5 seconds.
disp('Start speaking.')
recordblocking(recObj, 5);
disp('End of Recording.');
% Play back the recording.
play(recObj);
% Store data in double-precision array.
myRecording = getaudiodata(recObj);
filename = 'myvoice.wav';
audiowrite(filename,myRecording,Fs);
[y,Fs] = audioread('myvoice.wav');
z= transpose(y);
plot(y)
xlabel('time')
ylabel('Samples')
title('Signal in Time Domain')
