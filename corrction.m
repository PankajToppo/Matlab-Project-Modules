%clear;
n=pi/(4*4095);
theta=0:n:(pi/4);
p=tan(theta);
y=[];
for i=1:1:4096
    t=[];
    t=Fr_dec2bin(p(i));
tt=t(1:13);
disp(tt);
    
    y=[y tt];
end
%%

D=input('enter: ','s'); %sample: 0.0001101010001111
%0.0000111001110011 
% 0.0000111010011001 
% 0.0000111010110010 
% 0.0000111011011000 
% 0.0000111011110001 
% 0.0000111011111110 
% 0.0000111100010111 
% 0.0000111100111101 
% 0.0000111101010110 
for i=0:1:4095
    if(D==([y((13*i+1):(13*i+13))]))
        disp(i);
        disp(theta(i));
    end
end
