M=5; %% order of the filter
D=15; %% decimation factor
f=[0:10e6];%5 frequency vector
fs=40e6; %%sampling frequency
w=2*pi*f/fs;
H = [((sin(w*D/2))./(D*sin(w/2))).^M];
figure(1)
plot(f,20*log10(abs(H)),'r');
grid on;
xlabel('frequency in Hz');
ylabel('Decibels');
hold on;
M=5; %% order of the filter
D=20; %% decimation factor
f=[0:10e6];%5 frequency vector
fs=40e6; %%sampling frequency
w=2*pi*f/fs;
H = [((sin(w*D/2))./(D*sin(w/2))).^M];
figure(1)
plot(f,20*log10(abs(H)),'b');
grid on;
xlabel('frequency in Hz');
ylabel('Decibels');
hold on;
M=5; %% order of the filter
D=25; %% decimation factor
f=[0:10e6];%5 frequency vector
fs=40e6; %%sampling frequency
w=2*pi*f/fs;
H = [((sin(w*D/2))./(D*sin(w/2))).^M];
figure(1)
plot(f,20*log10(abs(H)),'g');
grid on;
xlabel('frequency in Hz');
ylabel('Decibels');
