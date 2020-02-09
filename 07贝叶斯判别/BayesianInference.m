%% ���ر�Ҷ˹�б�ʾ��
% MATLAB�ṩ�����ַ�����
% 1����Ա�Ҷ˹�б��ṩ��һ���ࣺNaiveBayes Class�����ú���NaiveBayes.fit
% 2���°湤����ֱ��ʹ��fitcnb��������
% ���ֵ��÷���������Naive Bayes model��ʵ��
% �����������Ծ����fisheriris����
% ͨ��ָ��'load fisheriris'��������

%% ����׼��
%����
sample=xlsread('BayesSample.xlsx',2,'A2:D80');
sample_class=xlsread('BayesSample.xlsx',2,'E2:E80');
%������
test=xlsread('BayesSample.xlsx',3,'A2:D72');
test_class=xlsread('BayesSample.xlsx',3,'E2:E72');

%% ִ�б�Ҷ˹�б��㷨
%���������ѵ��������
%BayesModel=NaiveBayes.fit(sample,sample_class);
BayesModel=fitcnb(sample,sample_class);
%���������ʲ�����
predict_class=BayesModel.predict(test);

%% ����׼ȷ�Լ���
n0=length(test_class);
n=sum(predict_class==test_class);
exact=n/n0*100;
disp(['Ԥ��׼ȷ�ȣ�' num2str(exact) '%']);