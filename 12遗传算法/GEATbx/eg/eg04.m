%% 二元多峰函数的优化实例
% 目标函数：f(x,y)=20+x1*sin(4pi*x1)+x2*sin(4pi*x2)  
% s.t. x1:[-3.0，12.1]  x2:[4.1,5.8]

%% 目标函数
f=@(x,y)20.0+x.*sin(4*pi*x)+y.*sin(4*pi*y);

%% 算法参数
population=40;  %种群个体数
generation=150;  %最大遗传代数
nvar=2;  %变量维度
len=25*nvar;  %染色体长度（二进制位数）
gap=0.9;  %代沟
Pc=0.7;  %交叉概率
Pm=NaN;  %变异概率缺省

trace=zeros(2,generation);  %寻优结果跟踪
FieldD=...  %区域描述器（函数bs2rv的参数）
    [repmat(25,1,nvar);...     %x1和x2分别用25位二进制编码
    -3,4.1;...              %lower bounds
    12.1,5.8;...            %upper bounds
    ones(1,nvar);...        %标准二进制编码    
    zeros(1,nvar);...       %线性刻度
    ones(1,nvar);...        %包含下边界
    ones(1,nvar)];          %包含上边界
gen=0;  %代数计数器

%% 初始种群
Chrom=crtbp(population,len);  %创建种群
val=bs2rv(Chrom,FieldD);  %转换成十进制
ObjV=f(val(:,1),val(:,2)); %初始种群对应的目标函数值

%% 种群迭代进化，搜索最优解
while gen<generation
    FitnV=ranking(-ObjV);  %适应度
    NewChrom=select('sus',Chrom,FitnV,gap);  %选择算子
    NewChrom=recombin('xovsp',NewChrom,Pc);  %单点交叉算子
    NewChrom=mutate('mut',NewChrom,[],Pm);      %变异算子
    val=bs2rv(NewChrom,FieldD);
    ObjVNew=f(val(:,1),val(:,2));
    [Chrom,ObjV]=reins(Chrom,NewChrom,1,[1,1],ObjV,ObjVNew);  %重插入子代种群
    val=bs2rv(Chrom,FieldD);
    gen=gen+1;
    %算法性能跟踪
    trace(1,gen)=max(ObjV);  
    trace(2,gen)=sum(ObjV)/length(ObjV);
end

%% 结果
%最优种群的分布
 x=-3:0.01:12.1; y=4.1:0.01:5.8;
[X,Y]=meshgrid(x,y);
Z=f(X,Y);
figure(1)
mesh(X,Y,Z);
shading interp
colormap summer
hold on;
plot3(val(:,1),val(:,2),ObjV,'r*');  
hold off
hidden off
legend('目标函数图像','最优种群分布','Location','Best');
title('函数图像及最优种群分布')
%最优解
[Y,I]=max(ObjV);
disp(['max=' num2str(Y)]);
disp(['xVal=' num2str(val(I,1))]);
disp(['xVal=' num2str(val(I,2))]);
%算法性能跟踪
figure(2)
plot(trace(1,:),'-*','LineWidth',1);
hold on 
plot(trace(2,:)','-o','LineWidth',1);
hold off
legend('最优解的变化','种群均值的变化','Location','Best');
grid on
title('算法性能跟踪')
xlabel('进化代数'); ylabel('函数值');