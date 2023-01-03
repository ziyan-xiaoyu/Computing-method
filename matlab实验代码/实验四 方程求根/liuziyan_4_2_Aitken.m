function [ x,k ] = liuziyan_4_2_Aitken( f,x0,emg )
% ��Aitken���ٷ���ⷽ��
% f�������Է�����˺�����x0����������ֵ���˷���Ϊ�ֲ���������ֵѡȡҪǡ����
% emg��������ָ�ꣻk������������
x(1) = x0;
k = 1;
x(k+1) = feval(f,x(k));
k = k+1;
x(k) = feval(f,x(k-1));
while abs(x(k)-x(k-1)) > emg     %���ƾ���
    k = k+1; 
    x1 = feval(f,x(k-1));
    x2 = feval(f,x1);
    x(k) = x2 - (x2-x1)^2/(x2-2*x1+x(k-1));
end

