%% 说明
%用主成分分析法评估十五个企业的综合实力
%企业的各项测评数据见Excel文件sample

%% 读取数据
clc;clear all;
A=xlsread('sample.xlsx','B2:I16');

%% 数据标准化处理
a=size(A,1);
b=size(A,2);
SA=zeros(a,b);
for k=1:b
    SA(:,k)=(A(:,k)-mean(A(:,k)))/std(A(:,k));
end;

%% 相关系数矩阵
CM=corrcoef(SA);

%% 相关系数矩阵的特征值与特征向量
[V,D]=eig(CM);
DS=flipud(diag(D));    %特征值降序排列

%% 贡献率和累计贡献率
ds=zeros(b,2);
for k=1:b
    ds(k,1)=DS(k,1)/sum((DS(:,1)));    %贡献率
    ds(k,2)=sum(DS(1:k,1))/sum(DS(:,1));    %累计贡献率
end
DS=[DS,ds];

%% 选取主成分
T=0.9;    %主成分信息保留率
for k=1:b
    if DS(k,3)>=T
        Com_num=k;
        break;
    end
end

%% 提取主成分对应的特征向量
PV=zeros(size(V,1),Com_num);
for k=1:Com_num
    PV(:,k)=V(:,b+1-k);
end

%% 计算各个评价对象的主成分得分
new_score=SA*PV;    %主成分得分矩阵
total_score=zeros(a,2);    %总得分矩阵
for k=1:a
    total_score(k,1)=sum(new_score(k,:));
    total_score(k,2)=k;
end

%% 评价结果矩阵
result=[new_score,total_score];
result=sortrows(result,-4);    %按总分（第四列）降序排序

%% 输出结果
disp('相关系数矩阵特征值  贡献率  累计贡献率')
disp(num2str(DS))
disp(['主成分数目：' num2str(Com_num)])
disp('主成分对应的特征向量')
disp(num2str(PV))
disp('主成分得分（按第四列总分降序排列，前三列为各个主成分的得分，第五列为企业编号）')
disp(num2str(result))