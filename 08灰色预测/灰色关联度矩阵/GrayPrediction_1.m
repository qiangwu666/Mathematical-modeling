%% 灰色预测程序示例一：灰色关联度矩阵
% 分析投资与收入间的关系;
% 投资与增长数据从Excel文件sample中读取;
% 分辨率取ρ=0.5;
% 子因素影响母因素。优势子因素对母因素影响大。优势母因素敏感度强，及受子因素变化影响较明显。

%% 读取数据
clc;clear all;
xi=xlsread('sample.xlsx','B2:F6');
xj=xlsread('sample.xlsx','B9:F14');
x=[xi;xj];

%% 数据标准化处理
n1=size(x,1);
for k=1:n1
    x(k,:)=x(k,:)/x(k,1);
end
data=x;    %保存中间变量

%% 分离参考数列和比较数列
n2=size(xi,1);
consult=data(n2+1:n1,:);    %参考数列（母因素，收入）
m1=size(consult,1);
compare=data(1:n2,:);    %比较数列（子因素，投资）
m2=size(compare,1);

%% 计算相关度矩阵
t=zeros(m2,size(consult,2));
for p=1:m1
    for q=1:m2
        t(q,:)=compare(q,:)-consult(p,:);
    end
    min_min=min(min(abs(t')));
    max_max=max(max(abs(t')));
    r=0.5;    %分辨率
    coefficient=(min_min+r*max_max)./(abs(t)+r*max_max);    %关联系数
    corr_degree=sum(coefficient')/size(coefficient,2);    %相关度
    R(p,:)=corr_degree;
end

%% 相关度矩阵
disp('相关度矩阵R=')
disp(R)

%% 作图展示结果
bar(R,0.9);
axis tight
legend('固定资产投资','工业投资','农业投资','科技投资','交通投资','Location','BestOutside');
%下面为X轴添加中文字符标注
set(gca,'XTickLabel','')
n=6;    %六个母因素
x_value=1:1:n;
x_range=[0.6,n+0.4];   %如果x_range=[1,6],那么将导致部分柱形条不能显示。所以要范围要缩一点
set(gca,'XTick',x_value,'XLim',x_range);    %gca为当前图形句柄
profits={'国民收入','工业收入','农业收入','商业收入','交通收入','建筑业收入'};
y_range=ylim;
handle_date=text(x_value,y_range(1)*ones(1,n)+0.018,profits(1:1:n));
set(handle_date,'HorizontalAlignment','right','VerticalAlignment','top',...
    'Rotation',25,'fontname','Arial','fontsize',13);    %设置合适的文本字体和大小并旋转一定角度
ylabel('y');
title('投资对收入的作用');