function Y=PosAc(st)
Ac=nan(64,1);
St=st-111111;
S6=mod(St,10);
S5=mod(.1*(St-S6),10);
S4=mod(.01*(St-S6-S5*10),10);
S3=mod(.001*(St-S6-S5*10-S4*100),10);
S2=mod(.0001*(St-S6-S5*10-S4*100-S3*1000),10);
S1=mod(.00001*(St-S6-S5*10-S4*100-S3*1000-S2*10000),10);

S1=[S1,S1+1];
S1=mod(S1,3)+1;

S2=[S2,S2+1];
S2=mod(S2,3)+1;

S3=[S3,S3+1];
S3=mod(S3,3)+1;

S4=[S4,S4+1];
S4=mod(S4,3)+1;

S5=[S5,S5+1];
S5=mod(S5,3)+1;

S6=[S6,S6+1];
S6=mod(S6,3)+1;

for i=1:64;

cd=str2num(dec2base(i-1,2));
i1=floor(mod(cd/1e5,2))+1;
i2=floor(mod(cd/1e4,2))+1;
i3=floor(mod(cd/1e3,2))+1;
i4=floor(mod(cd/1e2,2))+1;
i5=floor(mod(cd/1e1,2))+1;
i6=floor(mod(cd,2))+1;

Ac(i)=S6(i6)+10*S5(i5)+100*S4(i4)+1E3*S3(i3)+1E4*S2(i2)+1E5*S1(i1);
end

Y=Ac(2:64);
