%% 前向反馈(BP)神经网络实例
clc;clear all;
%% 原始数据
p=xlsread('sample.xlsx','B2:D17');  %网络输入
p=p';
t=xlsread('sample.xlsx','E2:F17');  %网络目标输出
t=t';

%% 归一化处理
% [pn,ps]=mapminmax(p);
% [tn,ts]=mapminmax(t);

%% 建立BP神经网络
net=newff(pn,tn,[3 8 2],{'purelin','logsig','purelin'});
net.trainParam.show=10;  %10轮回显示一次结果
net.trainParam.lr=0.05;  %learninf rate
net.trainParam.epochs=5000;  %最大训练次数
net.trainParam.goal=6.5e-4;  %均方误差
% 网络误差如果连续6次迭代都没有变化，训练将会自动终止（系统默认的）
% 为了让程序继续运行，用以下命令取消这条设置
net.divideFcn='';

%% 训练网络
[net,record]=train(net,pn,tn);

%% 用训练完毕的神经网络对原始数据进行仿真
an=sim(net,pn);
%反归一化还原数据
a=mapminmax('reverse',an,ts);
error=norm(a-t);
disp(['预测误差' num2str(error)]);

%% 用训练完毕的神经网络对新数据进行仿真
p_new=[73.39 75.55
    3.9635 2.0975
    0.9880 1.0268];
pn_new=mapminmax('apply',p_new,ps);  %用样本相同的规则归一化处理
an_new=sim(net,pn_new);
a_new=mapminmax('reverse',an_new,ts);