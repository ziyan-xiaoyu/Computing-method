function [S,S0,N] = liuziyan_2_2_FSimpson( f,a,b,eps )
% f--被积函数句柄；a,b--被积区间[a,b]；N--区间个数
% S--用复化Simpson公式求得的积分值；S0--积分的准确值
% flag--判断精度是否达到要求，0为不够，1为达到
% eps--输入精度
N = 0;
flag = 0;
S0 = 2*(1-exp(-1))/sqrt(pi);
while flag == 0
    N = N+1;
    h = (b-a)/N;
    fa = feval(f,a);
    fb = feval(f,b);
    S = fb + fa;
    x = a;
    for i = 1:N
        x = x + h/2;
        fx = feval(f,x);
        S = S + 4*fx;
        if i < N
            x = x + h/2;
            fx = feval(f,x);
            S = S + 2*fx;
        end
    end
    S = S*h/6;
    if abs(S - S0) < eps
        flag = 1;
    end
end
