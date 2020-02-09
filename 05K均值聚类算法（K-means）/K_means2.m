%% 说明
%每个样本的特征增加到三个
%K=2

%% 读取数据
clc;clear all;
x=xlsread('sample.xlsx','B2:D21');

%% 数据初始化
z=x(1:2,:);    %选取K个对象作为初始聚类中心
z1=zeros(size(z));

%% 迭代寻找聚类中心
s=size(x,1);    %样本数目
while 1
    count=zeros(2,1);
    allsum=zeros(size(z));
    for k=1:s    %对每一个样本，计算到2个聚类中心的距离
        temp1=sqrt((z(1,1)-x(k,1)).^2+(z(1,2)-x(k,2)).^2+(z(1,3)-x(k,3)).^2);
        temp2=sqrt((z(2,1)-x(k,1)).^2+(z(2,2)-x(k,2)).^2+(z(2,3)-x(k,3)).^2);
        if temp1<temp2
            count(1)=count(1)+1;
            allsum(1,1)=allsum(1,1)+x(k,1);
            allsum(1,2)=allsum(1,2)+x(k,2);
            allsum(1,3)=allsum(1,3)+x(k,3);
        else 
            count(2)=count(2)+1;
            allsum(2,1)=allsum(2,1)+x(k,1);
            allsum(2,2)=allsum(2,2)+x(k,2);
            allsum(2,3)=allsum(2,3)+x(k,3);
        end
    end
    z1(1,1)=allsum(1,1)/count(1);
    z1(1,2)=allsum(1,2)/count(1);
    z1(1,3)=allsum(1,3)/count(1);
    z1(2,1)=allsum(2,1)/count(2);
    z1(2,2)=allsum(2,2)/count(2);
    z1(2,3)=allsum(2,3)/count(2);
    if z==z1
        break;
    else
        z=z1;
    end
end

%% 结果显示
disp('聚类中心：')
disp(['(' num2str(z1(1,1)) ',' num2str(z1(1,2)) ',' num2str(z1(1,3)) ')'])
disp(['(' num2str(z1(2,1)) ',' num2str(z1(2,2)) ',' num2str(z1(2,3)) ')']);  
plot3(x(:,1),x(:,2),x(:,3),'b*','MarkerSize',10);
hold on
plot3(z1(:,1),z1(:,2),z1(:,3),'ro');
title('K均值法分类图')
xlabel('特征X1')
ylabel('特征X2')
zlabel('特征X3')