%12 bit atan(Q/I)=theta mapping
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear all;
ff=1090;
n=1/4095;
valuet=0:n:1;
thetat=(atan(valuet));
y=[];
for i=1:1:4096
    tt=[];
    tt=Fr_dec2bin(thetat(i));

    tt1=tt(1:13);
 
    y=[y tt1];
end
tt2=thetat(ff)
tt3=Fr_dec2bin(tt2);
tt3=tt3(1:13)


as=1/sqrt(2);
ns=as/4095;
values=0:ns:as;
thetas=(asin(values));
y1=[];
for i=1:1:4096
    ts=[];
    ts=Fr_dec2bin(thetas(i));

    ts1=ts(1:13);
    
    y1=[y1 ts1];
end

ss=values(ff)


ac=1-(1/sqrt(2));
nc=ac/4095;
valuec=1:-nc:1/(sqrt(2));
thetac=(acos(valuec));
y2=[];
for i=1:1:4096
    t=[];
    tc=Fr_dec2bin(thetac(i));

    tc1=tc(1:13);

    y2=[y2 tc1];
end
cc=valuec(ff)
x=atan(ss/cc)
xx=Fr_dec2bin(x);
xx=xx(1:13)
error =abs((-x+tt2)*180/pi)

