
close all; clear all;

% get device information
dev = audiodevinfo;

% create recorder object
rec = audiorecorder(50000, 16, 1);

% start recording
disp('start speaking');
% record(rec, 5); % will record for 5sec. for this command pause needs to be added
recordblocking(rec, 3);

% stop recording
disp('Stop recording');

% Play recorded sound
play(rec);

y = getaudiodata(rec);
% plot the sound
figure
plot(y);

speechrecognition(y)

