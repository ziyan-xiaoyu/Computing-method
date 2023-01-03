function A2 = liuziyan_3_2_2_CAdams4PC( f,a,b,N,ya )
% A2 = [x',y']���Ա���X�ͽ�Y����ɵľ���
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
    if i < 4        %���Ľ�Runge-Kutta����ǰ3����ʼ��
        k1 = feval(f,x(i),y(i));
        k2 = feval(f,x(i)+h/2,y(i)+(h/2)*k1);
        k3 = feval(f,x(i)+h/2,y(i)+(h/2)*k2);
        k4 = feval(f,x(i)+h,  y(i)+ h   *k3);
        y(i+1) = y(i) + (h/6)*(k1+2*k2+2*k3+k4);
    elseif i==4
            F = feval(f, x(i-3:i), y(i-3:i));
            py = y(i) + (h/24)*( F*[-9, 37, -59, 55]');  %Ԥ��
            p = feval(f, x(i+1), py);
            F = [ F(2) F(3) F(4) p ];
            y(i+1) = y(i) + (h/24)*( F*[1, -5, 19, 9]');  %У��
            p = py;
            c = y(i+1);
    else
            F = feval(f, x(i-3:i), y(i-3:i));
            py = y(i) + (h/24)*( F*[-9, 37, -59, 55]');  %Ԥ��
            my = py - 251*(p-c)/270;                     %�Ľ�
            m = feval(f, x(i+1), my);
            
            F = [ F(2) F(3) F(4) m ];
            cy = y(i) + (h/24)*( F*[1, -5, 19, 9]');  %У��
            y(i+1) = cy + 19*(py-cy)/270;             %�Ľ�
            p = py;
            c = cy;
    end
end
A2 = [x',y'];
