%% 前向反馈(BP)神经网络实例
clc;clear all;
%% 原始数据
pn=[556,540,517,485];
tn=[626,630,626,608];

%% 归一化处理


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


%% 用训练完毕的神经网络对新数据进行仿真
pn_new=503;
an_new=sim(net,pn_new);
disp(an_new);