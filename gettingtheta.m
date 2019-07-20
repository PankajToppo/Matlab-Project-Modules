clear all;
clc;
n=1/4095;
value=0:n:1;
theta=(atan(value)*(180/pi)/45);
y=[];
for i=1:1:4096
    t=[];
    t=Fr_dec2bin(theta(i));

    t1=t(1:13);
    disp(t1);

    y=[y t1];
end


