function pwm= priorWM(WMAT1,WMAT2,WMAT3,WMAT4,x,y,z);
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
pwm=0;

if WMAT1(x,y,z)>70
    pwm=pwm+1;
end
    if WMAT2(x,y,z)>70
    pwm=pwm+1;
    end
    if WMAT3(x,y,z)>70
    pwm=pwm+1;
    end
    if WMAT4(x,y,z)>70
    pwm=pwm+1;
    end
pwm=pwm/4;
