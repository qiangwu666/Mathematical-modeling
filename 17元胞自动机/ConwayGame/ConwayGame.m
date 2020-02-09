%% 参数定义
m=100; n=100;  %元胞维度m*n
% generation=1000;  %最大繁殖代数
gen=1;  %进化代数计数器

%% 种子（第零代）
a=round(rand(m,n));  %随机产生初始值
z=zeros(m,n);
img=image(cat(3,a,z,z));
axis equal; axis tight; axis off

%% 种群迭代
c=zeros(m,n);
% for gen=1:generation
while 1
    neighbours=a(:,[end,1:end-1])+a(:,[2:end,1])...
        +a([end,1:end-1],:)+a([2:end,1],:)...
        +a([end,1:end-1],[end,1:end-1])...
        +a([end,1:end-1],[2:end,1])...
        +a([2:end,1],[end,1:end-1])...
        +a([2:end,1],[2:end,1]);
    %更新本代矩阵
    b=(neighbours==3)|((neighbours==2)&(a));
    %更新本代图像
    set(img,'cdata',cat(3,a,z,z));
    title(['Generation: ',num2str(gen)]);
    if isequal(b,c)
        break
    end
    pause(0.01)
    c=a;  a=b;
    gen=gen+1;
end

disp(['经过' num2str(gen) '代进化以后种群达到平衡']);