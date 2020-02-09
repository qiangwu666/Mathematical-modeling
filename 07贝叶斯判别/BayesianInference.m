%% 朴素贝叶斯判别法示例
% MATLAB提供了两种方法：
% 1、针对贝叶斯判别提供了一个类：NaiveBayes Class，调用函数NaiveBayes.fit
% 2、新版工具箱直接使用fitcnb函数即可
% 两种调用方法均返回Naive Bayes model类实例
% 测试数据来自经典的fisheriris问题
% 通过指令'load fisheriris'载入数据

%% 数据准备
%样本
sample=xlsread('BayesSample.xlsx',2,'A2:D80');
sample_class=xlsread('BayesSample.xlsx',2,'E2:E80');
%待测试
test=xlsread('BayesSample.xlsx',3,'A2:D72');
test_class=xlsread('BayesSample.xlsx',3,'E2:E72');

%% 执行贝叶斯判别算法
%用先验概率训练分类器
%BayesModel=NaiveBayes.fit(sample,sample_class);
BayesModel=fitcnb(sample,sample_class);
%计算后验概率并分类
predict_class=BayesModel.predict(test);

%% 分类准确性检验
n0=length(test_class);
n=sum(predict_class==test_class);
exact=n/n0*100;
disp(['预测准确度：' num2str(exact) '%']);