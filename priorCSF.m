function pcsf= priorCSF(CSFAT1,CSFAT2,CSFAT3,CSFAT4,x,y,z);
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
pcsf=0;
if CSFAT1(x,y,z)>70
    pcsf=1;
end
    if CSFAT2(x,y,z)>70
    pcsf=pcsf+1;
    end
    if CSFAT3(x,y,z)>70
    pcsf=pcsf+1;
    end
    if CSFAT4(x,y,z)>70
    pcsf=pcsf+1;
    end
pcsf=pcsf/4;