function [ x,k ] = liuziyan_4_2_Diedai( f,x0,emg )
% �õ�����������Է���
% f�������Է�����˺�����x0����������ֵ���˷���Ϊ�ֲ���������ֵѡȡҪǡ����
% emg��������ָ�ꣻk������������
x(1) = x0;
k = 1;
x(k+1) = feval(f,x(k));
k = k+1;
x(k) = feval(f,x(k-1));
while abs(x(k)-x(k-1)) > emg     %���ƾ���
    k = k+1; 
    x(k) = feval(f,x(k-1));
end

