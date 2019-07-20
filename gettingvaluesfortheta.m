clear;
n=pi/(4*4095);
theta=0:n:(pi/4);
p=tan(theta);
y=[];
for i=1:1:4096
    t=[];
    t=Fr_dec2bin(p(i));
s=size(t);
if (s(2)~=19)
    t=[t zeros(19-s(2))];
    disp(t);
end
    y=[y t];
end

