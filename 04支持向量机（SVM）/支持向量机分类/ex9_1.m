clc, clear
a0=load('fenlei.txt'); %�ѱ���x1...x8���������ݱ����ڴ��ı��ļ�fenlei.txt��
a=a0'; b0=a(:,[1:27]); dd0=a(:,[28:end]); %��ȡ�ѷ���ʹ����������
[b,ps]=mapstd(b0); %�ѷ������ݵı�׼��
%mapstd�������еض����ݽ��б�׼������
%��ÿһ�����ݷֱ��׼��Ϊ��ֵΪymean(Ĭ��Ϊ0)��
%��׼��Ϊystd(Ĭ��Ϊ1)�ı�׼�����ݣ�����㹫ʽ�ǣ�y = (x-xmean)*(ystd/xstd) + ymean��
%������õ�ystd=0����ĳ�е�����ȫ����ͬ(��ʱxstd =0)��
%���ڳ���Ϊ0���������Matlab�ڲ����˱任��Ϊy = ymean��
dd=mapstd('apply',dd0,ps); %���������ݵı�׼��
group=[ones(20,1); 2*ones(7,1)]; %��֪�����������ţ������÷��࣬
%����������ǰ20��Ϊ��һ�࣬21-27Ϊ2��
s=svmtrain(b',group) %ѵ��֧��������������
sv_index=s.SupportVectorIndices  %����֧�������ı�ţ���������
beta=s.Alpha  %���ط��ຯ����Ȩϵ������������
bb=s.Bias  %���ط��ຯ���ĳ������������
mean_and_std_trans=s.ScaleData %��1�з��ص�����֪�������ֵ�������෴����
%��2�з��ص��Ǳ�׼�������ĵ�������������
check=svmclassify(s,b')  %��֤��֪������
%������ͼ��������ֱ��Щ
x=1:27;%����������27��
a=group';
b=check';
axis([0,28,0,3]);%���������᷶Χ
plot(x,a,'-o',x,b,'-*')
err_rate=1-sum(group==check)/length(group) %������֪������Ĵ�����
solution=svmclassify(s,dd') %�Դ�����������з���