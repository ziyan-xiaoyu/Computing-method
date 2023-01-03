function [ x,k ] = liuziyan_5_1_Gauss_Seidel( A,b,x0,N,emg )
% ��Gauss-Seidel�����������Է�����Ax=b�Ľ⣻
% x�����õ�������õ����Է�����Ľ��ƽ⣻k������������
% A�������Է��������˾���b�����Ҷ�������x0����������ʼֵ��
% N���������������ޣ���������������N�����ʧ�ܣ�
% emg�������ƾ��ȣ�
n = length(A);
x1 = zeros(n,1);
x2 = zeros(n,1);
x1 = x0;
k = 0;
r = max(abs(b-A*x1));
while r > emg
    for i = 1:n
        sum = 0;
        for j = 1:n
            if j>i
                sum = sum + A(i,j)*x1(j);
            elseif j<i
                sum = sum + A(i,j)*x2(j);
            end
        end
        x2(i) = (b(i)-sum)/A(i,i);
    end
    r = max(abs(x2-x1));
    x1 = x2;
    k = k+1;
    if k > N
        disp('����ʧ�ܣ�����');
        return;
    end
end
x = x1;

