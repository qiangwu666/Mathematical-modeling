%% ��������
m=100; n=100;  %Ԫ��ά��m*n
% generation=1000;  %���ֳ����
gen=1;  %��������������

%% ���ӣ��������
% a=rand(m,n)<0.1;
a=zeros(m,n);
a(m/2,n/4:n*3/4)=1;  a(m/4:m*3/4,n/2)=1;
z=zeros(m,n);
img=image(cat(3,a,z,z));
axis equal; axis tight; axis off

%% ��Ⱥ����
% for gen=1:generation
while 1
    temp=((a>0)&(a<6));
    neighbours=temp(:,[end,1:end-1])+temp(:,[2:end,1])...
        +temp([end,1:end-1],:)+temp([2:end,1],:)...
        +temp([end,1:end-1],[end,1:end-1])...
        +temp([end,1:end-1],[2:end,1])...
        +temp([2:end,1],[end,1:end-1])...
        +temp([2:end,1],[2:end,1]);
    %���±�������
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
    %���±���ͼ��
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

% disp(['����' num2str(gen) '�������Ժ���Ⱥ�ﵽƽ��']);