function [ x,k ] = liuziyan_4_1_Newton( f,x0,emg )
% ��ţ�ٷ���ⷽ�̵ĸ�
% f�������Է�����˺�����x0����������ֵ���˷���Ϊ�ֲ���������ֵѡȡҪǡ����
% emg��������ָ�ꣻk������������
[f1,d1] = feval(f,x0);
k = 1;
x(1) = x0;
x(2) = x(1) - f1/d1;
while abs(f1) > emg     %���ƾ���
    k = k+1; 
    [f1,d1] = feval(f,x(k));
    x(k+1) = x(k) - f1/d1;
end

