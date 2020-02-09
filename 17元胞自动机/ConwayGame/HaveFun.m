%% ��������
m=1000; n=1000;  %Ԫ��ά��m*n
% generation=1000;  %���ֳ����
gen=1;  %��������������

%% ���ӣ��������
% a=round(rand(m,n));  %���������ʼֵ
a=zeros(m,n);
a([m/2,n/2],[m/2+1,n/2+1])=1;
z=zeros(m,n);
% img=image(cat(3,a,z,z));
img=imshow(a);
axis equal; axis tight; axis off
set(gcf,'position',[241 132 560 420]) ;%241 132 560 420

%% ��Ⱥ����
c=zeros(m,n);
% for gen=1:generation
while 1
    neighbours=a(:,[end,1:end-1])+a(:,[2:end,1])...
        +a([end,1:end-1],:)+a([2:end,1],:)...
        +a([end,1:end-1],[end,1:end-1])...
        +a([end,1:end-1],[2:end,1])...
        +a([2:end,1],[end,1:end-1])...
        +a([2:end,1],[2:end,1]);
    %���±�������
%     b=(neighbours==3)|((neighbours==2)&(a));
    b=(neighbours==1)|((neighbours==2)&(a));
    %���±���ͼ��
    set(img,'cdata',a);
    title(['Generation: ',num2str(gen)]);
    if isequal(b,c)
        break
    end
%     pause(0.00001)
    drawnow
    c=a;  a=b;
    gen=gen+1;
end

disp(['����' num2str(gen) '�������Ժ���Ⱥ�ﵽƽ��']);