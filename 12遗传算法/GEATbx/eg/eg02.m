%% 二元单峰函数的优化实例
% 目标函数是2维De Jong函数：
% f(x,y)=x^2+y^2

%% 目标函数
fxy=@(x,y)x.^2+y.^2;

%% 算法参数
population=40;  %种群个体数
generation=250;  %最大遗传代数
nvar=2;  %变量维度
len=40;  %染色体长度（二进制位数）
gap=0.9;  %代沟
Pc=0.7;  %交叉概率
Pm=NaN;  %变异概率缺省

trace=zeros(2,generation);  %寻优结果跟踪
FieldD=...  %区域描述器（函数bs2rv的参数）
    [20,20;...     %x1和x2分别用20位二进制编码
    -512,-512;...  %lower bounds
    512,512;...    %upper bounds
    1,1;...        %标准二进制编码    
    0,0;...        %线性刻度
    1,1;...        %包含下边界
    1,1];          %包含上边界
gen=0;  %代数计数器

%% 初始种群
Chrom=crtbp(population,len);  %创建种群
val=bs2rv(Chrom,FieldD);  %转换成十进制
ObjV=fxy(val(:,1),val(:,2));  %初始种群对应的目标函数值

%% 种群迭代进化，搜索最优解
while gen<generation
    FitnV=ranking(ObjV);  %适应度
    NewChrom=select('sus',Chrom,FitnV,gap);  %选择算子
    NewChrom=recombin('xovsp',NewChrom,Pc);  %单点交叉算子
    NewChrom=mutate('mut',NewChrom,[],Pm);      %变异算子
    val=bs2rv(NewChrom,FieldD);
    ObjVNew=fxy(val(:,1),val(:,2));
    [Chrom,ObjV]=reins(Chrom,NewChrom,1,[1,1],ObjV,ObjVNew);  %重插入子代种群
    val=bs2rv(Chrom,FieldD);
    gen=gen+1;
    %算法性能跟踪
    trace(1,gen)=min(ObjV);  
    trace(2,gen)=sum(ObjV)/length(ObjV);
end

%% 结果
%最优种群的分布
x=-512:20:512; y=x;
[X,Y]=meshgrid(x,y);
Z=fxy(X,Y);
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
[Y,I]=min(ObjV);
disp(['min=' num2str(Y)]);
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