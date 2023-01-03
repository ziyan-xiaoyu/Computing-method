function A1 = liuziyan_3_2_1_Adams4PC( f,a,b,N,ya )
% A1 = [x',y']是自变量X和解Y所组成的矩阵
if N < 4
    return;
end
h = (b-a)/N;
y = zeros(1,N+1);
x = zeros(1,N+1);
y(1) = ya;
x = a:h:b;
F = zeros(1,4);
for i = 1:N
    if i < 4        %用四阶Runge-Kutta法求前3个初始解
        k1 = feval(f,x(i),y(i));
        k2 = feval(f,x(i)+h/2,y(i)+(h/2)*k1);
        k3 = feval(f,x(i)+h/2,y(i)+(h/2)*k2);
        k4 = feval(f,x(i)+h,  y(i)+ h   *k3);
        y(i+1) = y(i) + (h/6)*(k1+2*k2+2*k3+k4);
    else
        F = feval(f, x(i-3:i), y(i-3:i));
        py = y(i) + (h/24)*( F*[-9, 37, -59, 55]'); %预报
        p = feval(f, x(i+1), py);
        F = [F(2) F(3) F(4) p];
        y(i+1) = y(i) + (h/24)*( F*[1, -5, 19, 9]'); %校正
    end
end
A1 = [x',y'];

