%% 经典灰色预测GM(1,1)通用程序说明
% 
% 功能：
% 根据输入的原始数据计算出灰色模型；根据输入的项下标给出相应项的预测值
%
% 输入提示：
%
% 第一个输入量可以直接输入原数列 $x^{(0)}$ 的值（数值行向量）；   
% 也可以从Excel文件中读取数据，此时输入值为文件名和读取范围字符串组成的元胞数组，例如：{'sample.xlsx','A1:G1'}
%
% 第二个输入量为数列下标组成的行向量；
% 程序将把对应项的预测值输出
% 
% 第三个输入量指示检验模型所用的方法，可缺省或者为空；
%
% 输入内容为字符串‘C’,'P','Q'中的一个或多个，分别代表的检验方法为：方差比检验法，小误差概率检验法，相对误差检验法；
%
% 当输入量为多个时，应写成字符串数组的形式。；例如：['C','Q']。
% 
% 第四个输入量只能是0或1，也允许缺省或者为空。
% 是1表明需要做出原始数据和预测数据图像并返回图形句柄handle；
% 是0则不做图

function [ predict,handle ] = GrayPrediction_2 ( x0,n0,OPTIONS,PLOTorNOT )

%% 检测输入参数个数
if nargin==2
    O=0;P=0;
elseif nargin==3
    O=1;P=0;
elseif nargin==4
    O=1;P=1;
end

%% 输入或读取原始数列 $x^{(0)}$
if  iscell(x0)==1
    x0=xlsread(x0{1},x0{2});
end
n=length(x0);

%% 做极比检测判断能否用GM（1，1）建模
 lamda=x0(1:n-1)./x0(2:n);
 range=minmax(lamda);
 if range(1,1)<exp(-(2/(n+2))) || range(1,2)>exp(2/(n+2))
     error('极比检测未通过，不能使用GM(1,1)模型。请检查数据可靠性或换用其它模型求解')
 else
     disp('通过极比检测，可以用GM(1,1)建模')
 end

%% 累加处理（AGO）
% 累加公式为 $x^{(1)}(k)=\Sigma{^k _{i=1}}x^{(0)}(i)$
x1=cumsum(x0);

%% 计算紧邻均值矩阵
% 计算公式为 $z^{(1)}(k)=1/2(x^{(1)}(k)+x^{(1)}(k-1))$
z=zeros(1,n-1);
for k=2:n
    z(k)=0.5*(x1(k)+x1(k-1));
end

%% 用最小二乘法计算发展系数和灰色作用量
% 计算公式为 $\bf\it{u}=(\it{a},\it{b})^T=(B^TB)^{-1}B^TY$； $B,T$ 的含义参见程序代码。
B=[-z(2:n)',ones(n-1,1)];
Y=x0(2:n)';
u=((B'*B)\B')*Y;
%% 
% 这样就建立了GM(1,1)灰微分方程 $x^{(0)}(k)+az^{(1)}(k)=b$
%
% 其中发展系数a=u(1),灰色作用量b=u(2)。

%% 灰微分方程的解
% 注：
%
% 灰微分方程的理论解为：
% $x^{(1)}(k)=(x^{(0)}(1)-b/a)e^{-ak}+b/a$ 
% 
% 为了方便后面步骤带入模型进行预测，写成匿名函数的形式。
forcast=@(k)(x0(1)-u(2)./u(1)).*exp(-u(1).*k)+u(2)./u(1);

%% 利用模型进行预测
predict=forcast(n0-1)-forcast(n0-2);
if isempty(find(n0,1))==0    %输入的下标中有1
     predict(find(n0,1))=x0(1);
end

%% 模型检测
if O==1
    r=forcast((1:n)-1)-forcast((1:n)-2);
    test=[x0(1),r(2:n)];
    epsilon=x0-test;    %残差
    delta=abs(epsilon./x0);    %相对误差
    if isempty(find(OPTIONS=='C', 1))==0    % 方差比检验法
        C=std(epsilon,1)/std(x0,1);
        disp(['方差比C=' num2str(C)]);
    end
    if isempty(find(OPTIONS=='P'))==0    %小误差概率检验法
        S1=std(x0,1);
        S1_new=S1*0.6745;
        temp_P=find(abs(epsilon-mean(epsilon))<S1_new);
        P=length(temp_P)/n;
        disp(['小误差概率P=' num2str(P)]);
    end
    if isempty(find(OPTIONS=='Q'))==0    %相对误差检验法
        Q=mean(delta);
        disp(['相对误差Q=' num2str(Q)]);
    end
end

%% 作图
if P==1
    n0_=find((n0>=1)&(n0<=n));
    if PLOTorNOT==1
        plot(n0_,x0(n0_),'ro','MarkerSize',11);
        hold on 
        plot(n0,predict,'*','MarkerSize',10,'Color','b');
        grid on
        hold off
        legend('原始数据','模型预测','Location','Best');
        xlabel('n');
        ylabel('x^{(0)}(n)');
        handle=gca;
    end
end