%% 数据准备
X0=xlsread('sample.xlsx','B2:E19');
[m,n]=size(X0);
X=zeros(m,n-1);
for k=1:n-1
    X(:,k)=(X0(:,k)-mean(X0(:,k)))/std(X0(:,k));
end

%% 数据预处理
e=ones(m,1);
D=X0(:,4);
B=zeros(m,m);
C=zeros(m,m);
for k=1:m
    B(k,k)=1;
    C(k,k)=D(k,1);
end

%% 转化成规划模型进行求解
A=[-X(:,1).*D -X(:,2).*D -X(:,3).*D D -B];
b=-e;
f=[0 0 0 0 ones(1,m)];
lb=[-inf -inf -inf -inf zeros(1,m)]';
x=linprog(f,A,b,[],[],lb);

%% 结果
W=[x(1) x(2) x(3)];  %提取系数
CC=x(4);  %提取截距
X1=[X(:,1) X(:,2) X(:,3)];
R1=X1*W'-CC;  %代入方程的计算结果
R2=sign(R1);  %根据计算结果进行分类
R=[R1 R2];
disp('超平面方程：');
disp(['X1:' num2str(W(1))]);
disp(['X2:' num2str(W(2))]);
disp(['X3:' num2str(W(3))]);
disp(['intercept:' num2str(CC)]);
disp('超平面分类结果：');
disp(R);

%% 
%  从结果看，线性分类模型存在着一定的误差，但是这种误差是允许的
%  应用非线性SVM模型分类准确度可以达到100%
%  但是非线性模型的推广能力较差，也就是说对于训练样本吻合程度好，但是对于新样本结果可能还没有线性的好
%  因此实际中常用的是现行模型