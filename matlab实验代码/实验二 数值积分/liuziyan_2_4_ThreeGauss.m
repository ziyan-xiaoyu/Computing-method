function [G,eps] = liuziyan_2_4_ThreeGauss( f,a,b )
% f--被积函数句柄；a,b--被积区间[a,b]；
% G--用Romberg公式求得的积分值;G0--积分的准确值
% eps--输入精度
x1 = (a+b)/2 - sqrt(3/5) * (b-a)/2;
x2 = (a+b)/2 + sqrt(3/5) * (b-a)/2;
G = (b-a) * (5*feval(f,x1)/9 + 8*feval(f,(a+b)/2)/9 +...
    5*feval(f,x2)/9)/2;
G0 = 2*(1-exp(-1))/sqrt(pi);
eps = abs(G - G0);
end
