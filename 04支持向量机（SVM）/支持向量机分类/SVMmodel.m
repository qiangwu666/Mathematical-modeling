%%  ���Թ滮�����SVMģ��
%% ��ջ�����������������
clc
clear all
X0=xlsread('SVM_ex2.xlsx', 'B2:E19');
for i=1:3
    X(:,i)=(X0(:,i)-mean(X0(:,i)))/std(X0(:,i)); % ���ݱ�׼��
end
% ����Ԥ����
[m,n]=size(X);
e=ones(m,1);
D=[X0(:,4)];
B=zeros(m,m);
C=zeros(m,m);
for i=1:m
    B(i,i)=1;
    C(i,i)=D(i,1);
end

%% ת���ɹ滮ģ�ͽ������
A=[-X(:,1).*D, -X(:,2).*D, -X(:,3).*D, D, -B];
b=-e;
f=[0,0,0,0, ones(1,m)];
lb=[-inf,-inf,-inf,-inf,zeros(1,m)]';
x = linprog(f,A,b,[],[],lb);

%% ģ����֤������ʾ
W=[x(1,1), x(2,1), x(3,1)]; % ��ȡϵ��
CC=x(4,1);         % ��ȡ�ؾ�
X1=[X(:,1), X(:,2), X(:,3)];
R1=X1*W'-CC;      
R2=sign(R1);      %���з���
disp('������������');
disp('��ƽ�淽��Ϊ��');
disp(['X1:' num2str(x(1,1))]);
disp(['X2:' num2str(x(2,1))]);
disp(['X3:' num2str(x(3,1))]);
disp(['intercept:' num2str(x(4,1))]); % ������
disp('��ƽ���������');
R=[R1, R2]       
