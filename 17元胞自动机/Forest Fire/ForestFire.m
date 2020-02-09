%% ��������
m=100; n=100;  %Ԫ��ά��m*n
generation=3000;  %���ֳ����
gen=1;  %��������������
Plighting=0.000005;  %���Է���ȼ�ո���
Pgrowth=0.01;  %��λ��������

%% ���ӣ��������
a=zeros(m,n);
z=zeros(m,n);
img=image(cat(3,z,z*0.2,z));
axis equal; axis tight; axis off

%% ��Ⱥ����
% 1��buring->empty   
% 2��empty->green by probablity of Pgrowth   
% 3��green->buring if at least one neighbor buring
% or by probablity of Plighting   
% 4��
for gen=1:generation
    temp=(a==1);
    neighbours=temp(:,[end,1:end-1])+temp(:,[2:end,1])...
        +temp([end,1:end-1],:)+temp([2:end,1],:)...
        +temp([end,1:end-1],[end,1:end-1])...
        +temp([end,1:end-1],[2:end,1])...
        +temp([2:end,1],[end,1:end-1])...
        +temp([2:end,1],[2:end,1]);
    %���±�������
    b=2*(a==2)-((a==2)&((neighbours>0)|(rand(m,n)<Plighting)))...  %green->buring
        +2*((a==0)&(rand(m,n))<Pgrowth);  %empty->green
                                          %(b������Ԫ��Ϊ0)buring->empty
    %���±���ͼ��
    set(img,'cdata',cat(3,a==1,a==2,z));
    title(['Generation: ',num2str(gen)]);
    a=b;
    pause(0.05)
end