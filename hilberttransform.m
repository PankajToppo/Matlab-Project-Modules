t=0:0.1:69;
fm=32*10^3;
fc=10*10^6;
fs=2*fc;
te=2*pi*rand(1);
x=sind(2*pi*fm*t);       %%u^1
y=cosd(2*pi*fm*t);       %%u1
pm1=pmmod(x,fc,fs,te);
pm2=pmmod(y,fc,fs,te);   %%-pi/2 shifted signal


q=sind(2*pi*fc*t);       %%from dco 
i=cosd(2*pi*fc*t);       %%from dco

cse=(i.*pm2)+(q.*x);      %%cos(thetae)
sne=(i.*x)-(q.*pm2);      %%sin(thetae)

tne=sne./cse;            %%tan(thetae)
tte=atan(tne);          %%(thetae)
plot(t,tte)
xlabel('Time');
ylabel('error in degrees')
title('error variation with time')