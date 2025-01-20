function pgm= priorGM(GMAT1,GMAT2,GMAT3,GMAT4,x,y,z);
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
pgm=0;
if GMAT1(x,y,z)>70
    pgm=1;
end
    if GMAT2(x,y,z)>70
    pgm=pgm+1;
    end
    if GMAT3(x,y,z)>70
    pgm=pgm+1;
    end
    if GMAT4(x,y,z)>70
    pgm=pgm+1;
    end
pgm=pgm/4;