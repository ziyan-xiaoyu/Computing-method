function [ x,k ] = liuziyan_4_3_Chord(f,x0,x1,emg)
% ���ҽط���ⷽ�̵ĸ�
% f�������Է�����˺�����x1��x2����������ֵ
% emg��������ָ�ꣻk����ѭ������
k = 1;
y0 = feval(f,x0);
y1 = feval(f,x1);
x(k) = x1 - (x1 - x0)*y1/(y1 - y0);
y(k) = feval(f,x(k));
k = k+1;
x(k) = x(k-1) - (x(k-1) - x0)*y(k-1)/(y(k-1) - y0);
while abs(x(k) - x(k-1)) > emg
    y(k) = feval(f,x(k));
    x(k+1) = x(k) - (x(k) - x0)*y(k)/(y(k) - y0);
    k = k+1;
end

