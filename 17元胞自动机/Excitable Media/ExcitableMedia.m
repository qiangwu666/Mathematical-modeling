%% 参数定义
m=100; n=100;  %元胞维度m*n
% generation=1000;  %最大繁殖代数
gen=1;  %进化代数计数器

%% 种子（第零代）
% a=rand(m,n)<0.1;
a=zeros(m,n);
a(m/2,n/4:n*3/4)=1;  a(m/4:m*3/4,n/2)=1;
z=zeros(m,n);
img=image(cat(3,a,z,z));
axis equal; axis tight; axis off

%% 种群迭代
% for gen=1:generation
while 1
    temp=((a>0)&(a<6));
    neighbours=temp(:,[end,1:end-1])+temp(:,[2:end,1])...
        +temp([end,1:end-1],:)+temp([2:end,1],:)...
        +temp([end,1:end-1],[end,1:end-1])...
        +temp([end,1:end-1],[2:end,1])...
        +temp([2:end,1],[end,1:end-1])...
        +temp([2:end,1],[2:end,1]);
    %更新本代矩阵
    b=((a==0)&(neighbours>=3))+...
        2*(a==1)+...
        3*(a==2)+...
        4*(a==3)+...
        5*(a==4)+...
        6*(a==5)+...
        7*(a==6)+...
        8*(a==7)+...
        9*(a==8)+...
        0*(a==9);
    %更新本代图像
    set(img,'cdata',cat(3,b,z,z));
    title(['Generation: ',num2str(gen)]);
    if isequal(a,b)
        a=zeros(m,n);
        a(m/2,n/4:n*3/4)=1;  
        a(m/4:m*3/4,n/2)=1;
        pause(0.01)
    else
        a=b;
        pause(0.01)
    end  
    gen=gen+1;
end

% disp(['经过' num2str(gen) '代进化以后种群达到平衡']);