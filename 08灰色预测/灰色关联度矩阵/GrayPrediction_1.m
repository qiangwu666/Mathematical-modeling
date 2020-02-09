%% ��ɫԤ�����ʾ��һ����ɫ�����Ⱦ���
% ����Ͷ���������Ĺ�ϵ;
% Ͷ�����������ݴ�Excel�ļ�sample�ж�ȡ;
% �ֱ���ȡ��=0.5;
% ������Ӱ��ĸ���ء����������ض�ĸ����Ӱ�������ĸ�������ж�ǿ�����������ر仯Ӱ������ԡ�

%% ��ȡ����
clc;clear all;
xi=xlsread('sample.xlsx','B2:F6');
xj=xlsread('sample.xlsx','B9:F14');
x=[xi;xj];

%% ���ݱ�׼������
n1=size(x,1);
for k=1:n1
    x(k,:)=x(k,:)/x(k,1);
end
data=x;    %�����м����

%% ����ο����кͱȽ�����
n2=size(xi,1);
consult=data(n2+1:n1,:);    %�ο����У�ĸ���أ����룩
m1=size(consult,1);
compare=data(1:n2,:);    %�Ƚ����У������أ�Ͷ�ʣ�
m2=size(compare,1);

%% ������ضȾ���
t=zeros(m2,size(consult,2));
for p=1:m1
    for q=1:m2
        t(q,:)=compare(q,:)-consult(p,:);
    end
    min_min=min(min(abs(t')));
    max_max=max(max(abs(t')));
    r=0.5;    %�ֱ���
    coefficient=(min_min+r*max_max)./(abs(t)+r*max_max);    %����ϵ��
    corr_degree=sum(coefficient')/size(coefficient,2);    %��ض�
    R(p,:)=corr_degree;
end

%% ��ضȾ���
disp('��ضȾ���R=')
disp(R)

%% ��ͼչʾ���
bar(R,0.9);
axis tight
legend('�̶��ʲ�Ͷ��','��ҵͶ��','ũҵͶ��','�Ƽ�Ͷ��','��ͨͶ��','Location','BestOutside');
%����ΪX����������ַ���ע
set(gca,'XTickLabel','')
n=6;    %����ĸ����
x_value=1:1:n;
x_range=[0.6,n+0.4];   %���x_range=[1,6],��ô�����²���������������ʾ������Ҫ��ΧҪ��һ��
set(gca,'XTick',x_value,'XLim',x_range);    %gcaΪ��ǰͼ�ξ��
profits={'��������','��ҵ����','ũҵ����','��ҵ����','��ͨ����','����ҵ����'};
y_range=ylim;
handle_date=text(x_value,y_range(1)*ones(1,n)+0.018,profits(1:1:n));
set(handle_date,'HorizontalAlignment','right','VerticalAlignment','top',...
    'Rotation',25,'fontname','Arial','fontsize',13);    %���ú��ʵ��ı�����ʹ�С����תһ���Ƕ�
ylabel('y');
title('Ͷ�ʶ����������');