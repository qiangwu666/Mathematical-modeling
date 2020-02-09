function [ center,result ] = Kmeans(sample,K,ShowOrNot,PlotOrNot)
% 输出参数：
% center:聚类中心。矩阵的每一行为一个中心的坐标。
% result:聚类结果。返回一个存储各个类组的元胞数组。

% 输入参数：
% sample:待分类样本数据。每一行为一个样本点坐标
% K:聚类中心的个数
% ShowOrNot:1表示显示聚类中心结果；0表示不显示
% PlotOrNot:1表示绘制点阵图展示聚类结果（仅当维度不大于3时有效）；0表示不绘制。

%% 检测输入参数个数
if nargin==2
    S=0;P=0;
elseif nargin==3
    S=1;P=0;
elseif nargin==4
    S=1;P=1;
end

%% 数据初始化
x=sample;
z=x(1:K,:);  %选取K个对象作为初始聚类中心
z1=zeros(size(z));
chara=size(z,2);  %特征的数目

%% 迭代寻找聚类中心
while 1
    count=zeros(K,1);
    allsum=zeros(size(z));
    temp=zeros(K,1);
    re=cell(1,K);
    for k=1:size(x,1)  %对每一个样本，计算到各个聚类中心的距离
        for s=1:K
            temp(s)=sqrt(sum((x(k,:)-z(s,:)).^2));
        end
        n=find(temp==min(temp));
        count(n)=count(n)+1;
        re{1,n}=[re{1,n};x(k,:)];
        allsum(n,:)=allsum(n,:)+x(k,:);
    end
    % 修正聚类中心
    z1=allsum./repmat(count,1,chara);
    if z==z1
        break;
    else
        z=z1;
    end
end

center=z;
result=re;

%% 结果显示
if S==1
    if ShowOrNot==1
        disp('聚类中心：')
        for s=1:K
            dis='';
            dis=[dis '('];
            for r=1:chara 
                dis=[dis num2str(center(s,r))];
                if r<chara
                    dis=[dis ','];
                end
            end
            dis=[dis ')'];
            disp(dis);
        end
    end
end

if P==1
    if PlotOrNot==1
        if chara>3
            warning('维度大于3，不可绘图！')
        elseif chara==1
            plot(x,zeros(1,length(x)),'b*','MarkerSize',10);
            hold on
            plot(center,zeros(1,K),'ro');
            axis([min(x)-1 max(x)+1 -1 1]);
            hold off
            title('K均值法分类图')
            xlabel('特征X')
            grid on
        elseif chara==2
            plot(x(:,1),x(:,2),'b*','MarkerSize',10);
            hold on
            plot(center(:,1),center(:,2),'ro');
            hold off
            title('K均值法分类图')
            xlabel('特征X1')
            ylabel('特征X2')
            grid on
        elseif chara==3
            plot3(x(:,1),x(:,2),x(:,3),'b*','MarkerSize',10);
            hold on
            plot3(z1(:,1),z1(:,2),z1(:,3),'ro');
            hold off
            title('K均值法分类图')
            xlabel('特征X1')
            ylabel('特征X2')
            zlabel('特征X3')
            grid on
        end
    end
end

end

