%% 二元单峰函数的优化实例
% 目标函数是10维De Jong函数：

%% 目标函数
f=@(a,b,c,d,e,f,g,h,i,j)...
    a.^2+b.^2+c.^2+d.^2+e.^2+...
    f.^2+g.^2+h.^2+i.^2+j.^2;

%% 算法参数
population=40;  %种群个体数
generation=500;  %最大遗传代数
nvar=10;  %变量维度
len=20*nvar;  %染色体长度（二进制位数）
gap=0.9;  %代沟
Pc=0.7;  %交叉概率
Pm=NaN;  %变异概率缺省

trace=zeros(2,generation);  %寻优结果跟踪
FieldD=...  %区域描述器（函数bs2rv的参数）
    [repmat(20,1,nvar);...     %x1和x2分别用20位二进制编码
    repmat(-512,1,nvar);...  %lower bounds
    repmat(512,1,nvar);...    %upper bounds
    ones(1,nvar);...        %标准二进制编码    
    zeros(1,nvar);...        %线性刻度
    ones(1,nvar);...        %包含下边界
    ones(1,nvar)];          %包含上边界
gen=0;  %代数计数器

%% 初始种群
Chrom=crtbp(population,len);  %创建种群
val=bs2rv(Chrom,FieldD);  %转换成十进制
ObjV=f(val(:,1),val(:,2),val(:,3),val(:,4),val(:,5),...
    val(:,6),val(:,7),val(:,8),val(:,9),val(:,10));  %初始种群对应的目标函数值

%% 种群迭代进化，搜索最优解
while gen<generation
    FitnV=ranking(ObjV);  %适应度
    NewChrom=select('sus',Chrom,FitnV,gap);  %选择算子
    NewChrom=recombin('xovsp',NewChrom,Pc);  %单点交叉算子
    NewChrom=mutate('mut',NewChrom,[],Pm);      %变异算子
    val=bs2rv(NewChrom,FieldD);
    ObjVNew=f(val(:,1),val(:,2),val(:,3),val(:,4),val(:,5),...
        val(:,6),val(:,7),val(:,8),val(:,9),val(:,10));
    [Chrom,ObjV]=reins(Chrom,NewChrom,1,[1,1],ObjV,ObjVNew);  %重插入子代种群
    val=bs2rv(Chrom,FieldD);
    gen=gen+1;
    %算法性能跟踪
    trace(1,gen)=min(ObjV);  
    trace(2,gen)=sum(ObjV)/length(ObjV);
end

%% 结果
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