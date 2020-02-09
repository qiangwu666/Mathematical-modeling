%% 参数定义
m=2; n=200;  %元胞维度m*n
range=10;  %初始车辆生成区间
v0=1;  vm=5;  %初始速度与最大速度
time=0;  %交通系统运行时间时间
Pa=[1 0.8 0.5 0.3 0];  %加速概率
Pb=[0 0.1 0.3 0.4 0.8];  %减速概率

%% 初始化
a=zeros(m,n);
a(2,1:2:range)=round(4*rand(1,length(1:2:range)))+1;
b=a;
%绘制初始图形
A=(a==0);
array=0.8*ones(20+2+m,n);
array(11,:)=A(1,:);
array(13,:)=A(2,:);
img=imshow(array);
set(gcf,'position',[50 132 900 400]) 
set(gca,'position',[0.1 0.1 0.8,0.8]) 

%% 种群迭代
for time=1:1000
    %更新元胞状态
    for k=n:-1:1  %迭代每个元胞
        if a(1,k)~=0  %超车道的车辆
            index1=find(a(1,(k+1):n)~=0); index1=min(index1)+k; 
            if isempty(index1)  %前方没车，距离正无穷
                G=inf;  Gs=0;
            else                %前方有车，计算距离和安全距离
                G=index1-k;  Gs=a(1,k)+1;
            end
            if (G>Gs)&&(~isempty(index1))             %安全距离之外，加速倾向
                if rand>1-Pa(a(1,k))  %加速
                    vt=a(1,k)+1;
                    if vt>vm
                        vt=vm;
                    end
                    if (k+vt)>n
                        b(1,k)=0;
                    else
                        b(1,k)=0;
                        b(1,k+vt)=vt;
                    end
                elseif rand<Pb(a(1,k))  %减速
                    vt=a(1,k)-1;
                    if vt<1
                        vt=1;
                    end
                    if (k+vt)>n
                        b(1,k)=0;
                    else
                        b(1,k)=0;
                        b(1,k+vt)=vt;
                    end
                else                   %原速
                    vt=a(1,k);
                    if (k+vt)>n
                        b(1,k)=0;
                    else
                        b(1,k)=0;
                        b(1,k+vt)=vt;
                    end
                end
            elseif (G<=Gs)&&(~isempty(index1))        %安全距离之内，减速倾向
                if (a(1,k)<=a(1,index1))...  %v后<=v前
                        &&(rand<0.1)...     %以0.1的概率选择超车
                        &&(Condition(a,1,k));  %满足超车条件
                    b(2,k)=b(1,k)+1;
                    b(1,k)=0;
                elseif (a(1,k)<=a(1,index1))...  %v后>=v前
                        &&(rand<0.75)...     %以一定的概率选择超车
                        &&(Condition(a,1,k));  %满足超车条件
                    b(2,k)=b(1,k)+1;
                    b(1,k)=0;
                else                        %否则减速
                    vt=G-2;
                    if vt<1
                        vt=1;
                    end
                    if (k+vt)>n
                        b(1,k)=0;
                    else
                        b(1,k)=0;
                        b(1,k+vt)=vt;
                    end
                end
            elseif isempty(index1)  %前方没有车
                if rand>1-Pa(a(1,k))  %加速
                    vt=a(1,k)+1;
                    if vt>vm
                        vt=vm;
                    end
                    if (k+vt)>n
                        b(1,k)=0;
                    else
                        b(1,k)=0;
                        b(1,k+vt)=vt;
                    end
                elseif rand<Pb(a(1,k))  %减速
                    vt=a(1,k)-1;
                    if vt<1
                        vt=1;
                    end
                    if (k+vt)>n
                        b(1,k)=0;
                    else
                        b(1,k)=0;
                        b(1,k+vt)=vt;
                    end
                else                   %原速
                    vt=a(1,k);
                    if (k+vt)>n
                        b(1,k)=0;
                    else
                        b(1,k)=0;
                        b(1,k+vt)=vt;
                    end
                end
            end 
        elseif a(2,k)~=0
            index2=find(a(2,(k+1):n)~=0);  index2=min(index2)+k;
            if isempty(index2)  %前方没车，距离正无穷
                G=inf;  Gs=0;
            else                %前方有车，计算距离和安全距离
                G=index2-k;  Gs=a(2,k)+1;
            end
            if (G>Gs)&&(~isempty(index2))             %安全距离之外，加速倾向
                if rand>1-Pa(a(2,k))  %加速
                    vt=a(2,k)+1;
                    if vt>vm
                        vt=vm;
                    end
                    if (k+vt)>n
                        b(2,k)=0;
                    else
                        b(2,k)=0;
                        b(2,k+vt)=vt;
                    end
                elseif rand<Pb(a(2,k))  %减速
                    vt=a(2,k)-1;
                    if vt<1
                        vt=1;
                    end
                    if (k+vt)>n
                        b(2,k)=0;
                    else
                        b(2,k)=0;
                        b(2,k+vt)=vt;
                    end
                else                   %原速
                    vt=a(2,k);
                    if (k+vt)>n
                        b(2,k)=0;
                    else
                        b(2,k)=0;
                        b(2,k+vt)=vt;
                    end
                end
            elseif (G<=Gs)&&(~isempty(index2))        %安全距离之内，减速倾向
                if (a(2,k)<=a(2,index2))...  %v后<=v前
                        &&(rand<0.1)...     %以0.1的概率选择超车
                        &&(Condition(a,2,k));  %满足超车条件
                    b(1,k)=b(2,k)+1;
                    b(2,k)=0;
                elseif (a(2,k)<=a(2,index2))...  %v后>=v前
                        &&(rand<0.75)...     %以一定的概率选择超车
                        &&(Condition(a,2,k));  %满足超车条件
                    b(1,k)=b(2,k)+1;
                    b(2,k)=0;
                else                        %否则减速
                    vt=G-2;
                    if vt<1
                        vt=1;
                    end
                    if (k+vt)>n
                        b(2,k)=0;
                    else
                        b(2,k)=0;
                        b(2,k+vt)=vt;
                    end
                end
            elseif isempty(index2)  %前方没有车
                if rand>1-Pa(a(2,k))  %加速
                    vt=a(2,k)+1;
                    if vt>vm
                        vt=vm;
                    end
                    if (k+vt)>n
                        b(2,k)=0;
                    else
                        b(2,k)=0;
                        b(2,k+vt)=vt;
                    end
                elseif rand<Pb(a(2,k))  %减速
                    vt=a(2,k)-1;
                    if vt<1
                        vt=1;
                    end
                    if (k+vt)>n
                        b(2,k)=0;
                    else
                        b(2,k)=0;
                        b(2,k+vt)=vt;
                    end
                else                   %原速
                    vt=a(2,k);
                    if (k+vt)>n
                        b(2,k)=0;
                    else
                        b(2,k)=0;
                        b(2,k+vt)=vt;
                    end
                end
            end
        end
    end
    %新加入的车
    id=find(b(2,1:range)~=0);  id=min(id);
    if id>2
        if mod(id,2)==0
            b(2,1:2:id-2)=round(4*rand(1,length(1:2:id-2)))+1;
        else
            b(2,1:2:id-1)=round(4*rand(1,length(1:2:id-1)))+1;
        end
    end
    b(b>vm)=vm;
    %更新图象
    A=(b==0);
    array(11,:)=A(1,:);
    array(13,:)=A(2,:);
    set(img,'cdata',array);
    title(['Time: ',num2str(time),'s']);
    a=b;
%     for s=2:n-1
%         if ((b(1,s)~=0)&&((b(1,s-1)~=0)||(b(1,s+1)~=0)))||...
%                 ((b(2,s)~=0)&&((b(2,s-1)~=0)||(b(2,s+1)~=0)))
%             disp(['error!' 'time=' num2str(time)])
%         end
%     end
    pause(0.01);
end