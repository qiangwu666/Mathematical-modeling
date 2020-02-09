%% 参数定义
m=100; n=100;  %元胞维度m*n
generation=3000;  %最大繁殖代数
gen=1;  %进化代数计数器
Plighting=0.000005;  %“自发”燃烧概率
Pgrowth=0.01;  %空位生长概率

%% 种子（第零代）
a=zeros(m,n);
z=zeros(m,n);
img=image(cat(3,z,z*0.2,z));
axis equal; axis tight; axis off

%% 种群迭代
% 1、buring->empty   
% 2、empty->green by probablity of Pgrowth   
% 3、green->buring if at least one neighbor buring
% or by probablity of Plighting   
% 4、
for gen=1:generation
    temp=(a==1);
    neighbours=temp(:,[end,1:end-1])+temp(:,[2:end,1])...
        +temp([end,1:end-1],:)+temp([2:end,1],:)...
        +temp([end,1:end-1],[end,1:end-1])...
        +temp([end,1:end-1],[2:end,1])...
        +temp([2:end,1],[end,1:end-1])...
        +temp([2:end,1],[2:end,1]);
    %更新本代矩阵
    b=2*(a==2)-((a==2)&((neighbours>0)|(rand(m,n)<Plighting)))...  %green->buring
        +2*((a==0)&(rand(m,n))<Pgrowth);  %empty->green
                                          %(b中其余元素为0)buring->empty
    %更新本代图像
    set(img,'cdata',cat(3,a==1,a==2,z));
    title(['Generation: ',num2str(gen)]);
    a=b;
    pause(0.05)
end