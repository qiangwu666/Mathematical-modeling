%% 径向基神经网络(RBF)实例
clc;clear all;
%% 原始数据
p=xlsread('sample.xlsx','B2:D17');  %网络输入
p=p';
t=xlsread('sample.xlsx','E2:F17');  %网络目标输出
t=t';

%% 归一化处理
[pn,ps]=mapminmax(p);
[tn,ts]=mapminmax(t);

%% 建立RBF神经网络
net=newrb(pn,tn);

%% 用训练完毕的神经网络对原始数据进行仿真
an=sim(net,pn);
%反归一化还原数据
a=mapminmax('reverse',an,ts);

%% 用训练完毕的神经网络对新数据进行仿真
p_new=xlsread('sample.xlsx','B18:D21');  p_new=p_new';
pn_new=mapminmax('apply',p_new,ps);  %用样本相同的规则归一化处理
an_new=sim(net,pn_new);
a_new=mapminmax('reverse',an_new,ts);
a_new_theory=xlsread('sample.xlsx','E18:F21');  %理论结果
a_new_theory=a_new_theory';
error=norm(a_new-a_new_theory);
disp(['预测误差：' num2str(error)]);