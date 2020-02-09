%% 清理
clc
clear all

%% 输入成对比较矩阵
A=input('请输入成对比较矩阵A=');

%% 一致性检验
[~,n]=size(A);
[v,d]=eig(A);
r=max(diag(d));
CI=(r-n)/(n-1);
RI=[0 0 0.58 0.90 1.12 1.24 1.32 1.41 1.45 1.49 1.52 1.54 1.56 1.58 1.59];
CR=CI/RI(n);
if CR<0.1
    CR_Result='通过一致性检验';
else
    RC_Result='未通过一致性检验';
end

%% 计算权向量
w=v(:,1)/sum(v(:,1));
w=w';

%% 结果输出
disp(['一致性指标：CI=' num2str(CI)]);
disp(['一致性比率：CR=' num2str(CR)]);
disp(['一致性检验结果:' CR_Result]);
disp(['特征值：' num2str(r)]);
disp(['特征向量' num2str(w)]);
