%% ˵��
%��Excel�ļ�sample�е��������з���
%ÿ����������������
%K=2

%% ��ȡ����
clc;clear all;
x=xlsread('sample.xlsx','B2:C21');

%% ���ݳ�ʼ��
z=x(1:2,1:2);    %ѡȡK��������Ϊ��ʼ��������
z1=zeros(2,2);

%% ����Ѱ�Ҿ�������
s=size(x,1);    %������Ŀ
while 1
    count=zeros(2,1);
    allsum=zeros(2,2);
    for k=1:s    %��ÿһ�����������㵽2���������ĵľ���
        temp1=sqrt((z(1,1)-x(k,1)).^2+(z(1,2)-x(k,2)).^2);
        temp2=sqrt((z(2,1)-x(k,1)).^2+(z(2,2)-x(k,2)).^2);
        if temp1<temp2
            count(1)=count(1)+1;
            allsum(1,1)=allsum(1,1)+x(k,1);
            allsum(1,2)=allsum(1,2)+x(k,2);
        else 
            count(2)=count(2)+1;
            allsum(2,1)=allsum(2,1)+x(k,1);
            allsum(2,2)=allsum(2,2)+x(k,2);
        end
    end
    z1(1,1)=allsum(1,1)/count(1);
    z1(1,2)=allsum(1,2)/count(1);
    z1(2,1)=allsum(2,1)/count(2);
    z1(2,2)=allsum(2,2)/count(2);
    if z==z1
        break;
    else
        z=z1;
    end
end

%% �����ʾ
disp('�������ģ�')
disp(['(' num2str(z1(1,1)) ',' num2str(z1(1,2)) ')'])
disp(['(' num2str(z1(2,1)) ',' num2str(z1(2,2)) ')']);  
plot(x(:,1),x(:,2),'b*','MarkerSize',10);
hold on
plot(z1(:,1),z1(:,2),'ro');
title('K��ֵ������ͼ')
xlabel('����X1')
ylabel('����X2')
grid on