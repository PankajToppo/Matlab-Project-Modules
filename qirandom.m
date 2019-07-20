q1='001000100101';
qz='';
s=12;

for r=1:s
    qz=strcat(qz,'0');
end

q1=strcat(q1, qz) ;

q2=bin2dec(q1);
i='110101001100';
i1=bin2dec(i);

tt1=q2/i1;

tt=dec2bin(tt1);
tt2=bin2dec(tt)
k=size(tt);
tt2='';
for r=1:(12-k(2))
    tt2=strcat(tt2,'0');
end

tt3=strcat(tt2,tt)