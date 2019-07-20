clc;
x=42;
disp(x);
y1=sind(x);
y2=cosd(x);
y3=Fr_dec2bin(y1);
y7=y3(3:14);
y4=Fr_dec2bin(y2);
y8=y4(3:14);
y6=bin2dec(y8);
qz='';
s=12;

for r=1:s
    qz=strcat(qz,'0');
end

q1=strcat(y7, qz) ;
q2=bin2dec(q1);
y5=floor(q2/y6);

 n=1/4095;
value=0:n:1;
theta=(atand(value));
y11=theta(y5)
error= abs(x-y11)
% % y=[];
% % for i=1:1:4096
% %     t=[];
% %     t=Fr_dec2bin(theta(i));
% % 
% %     t1=t(1:13);
% %     disp(t1);
% % 
% %     y=[y t1];
% % end
% 
% 
% tt=theta(bb)
% tr=Fr_dec2bin(tt);
% tr1=tr(1:13)
% 
% 
% 
% 
% as=1/sqrt(2);
% ns=as/4095;
% values=0:ns:as;
% thetas=(asin(values));
% % y1=[];
% % for i=1:1:4096
% %     ts=[];
% %     ts=Fr_dec2bin(thetas(i));
% % 
% %     ts1=ts(1:13);
% %     
% %     y1=[y1 ts1];
% % end
% 
% ss=sin(thetas(bb));
% 
% 
% ac=1-(1/sqrt(2));
% nc=ac/4095;
% valuec=1:-nc:1/(sqrt(2));
% thetac=(acos(valuec));
% % y2=[];
% % for i=1:1:4096
% %     t=[];
% %     tc=Fr_dec2bin(thetac(i));
% % 
% %     tc1=tc(1:13);
% % 
% %     y2=[y2 tc1];
% % end
% 
% cc=cos(thetac(bb));
% res=(atan(ss/cc)*180/pi)/45
% 
% res1=Fr_dec2bin(res);
% tr2=res1(1:13)
% 
% error=(tt-res)*45
