clear;
clc;
n=1/4095;
value=0:n:1;
theta=(atand(value));
y=[];
for x=1:1:44   % in degrees
q1=tand(x); %q/i quotient
q2=Fr_dec2bin(q1);  %dec to bin
q3=q2(3:14); %extracting 12 bits after point
q4=bin2dec(q3); %converting to dec
  
q5=theta(q4);    %getting theta

% disp(x);
% disp(q5);
t1= abs(q5-x);
y=[y t1];
end
plot(y);
xlabel('theta')
ylabel('error in degrees')
title('variation of error in degrees')

