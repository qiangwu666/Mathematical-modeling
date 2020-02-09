%% 参数定义
nx=100; ny=100;  %nx must be divisible by 4
time=1000;       %Maxmum time step
T=1;             %iterator

%% 种子（第零代）
z=zeros(nx,ny);  o=ones(nx,ny);
sand=z;  sandNew=z;
gnd=z;
diag1=z;  diag2=z;
and12=z;  or12=z;
sums=z;  orsums=z;

gnd(1:nx,ny-3)=1;         %right ground line
gnd(1:nx,3)=1;            %left ground line
gnd(nx/4:nx/2-2,ny/2)=1;  %the hole line
gnd(nx/2+2:nx,ny/2)=1;    %the hole line
gnd(nx/4,1:ny)=1;         %top line
gnd(nx*3/4,1:ny)=1;       %bottom line

r=rand(nx,ny);
sand(nx/4+1:nx*3/4-1,4:ny/2-1)=...
    r(nx/4+1:nx*3/4-14:ny/2-1)<0.75;  %fill the left side

img=image(cat(3,z,sand,gnd));
axis equal; axis tight; axis off

%% 迭代更新
for t=1:time
    p=mod(t,2);
    
    %upper left cell update
    xind=1+p:2:nx-2+p;
    yind=1+p:2:ny-2+p;
    %see if exactly one diagonal is ones
    diag1(xind,yind)=(sand(xind,yind)==1)&...
        (sand(xind+1,yind+1)==1)&...
        (sand(xind+1,yind)==0)&...
        (sand(xind,yind+1)==0);
    diag2(xind,yind)=(sand(xind+1,yind)==1)&...
        (sand(xind,yind+1)==1)&...
        (sand(xind,yind)==0)&...
        (sand(xind+1,yind+1)==0);
    %the diagonals both not occupied by particles
    and12(xind,yind)=(diag1(xind,yind)==0)&(diag2(xind,yind)==0);
    %one diagonal is occupied by two particles
    or12(xind,yind)=(diag1(xind,yind)==0)&(diag2(xind,yind)==0);
    %for every gas particle see if it near the boundary
    sums(xind,yind)=gnd(xind,yind)|...
        gnd(xind+1,yind)|...
        gnd(xind,yind+1)|...
        gnd(xind+1,yind+1);
    %cell layout:
    %If (no walls) and (diagonals are both not occupied)
    %then there is no collision,so move opposite cell to current one
    %If (no walls) and (noly one diagonal is occupied)
    %then there is a collision and particles rotate 90°
    %If (a wall)
    %then don't change the cell(reflection)
    sandNew(xind,yind)=...
        (and12(xind,yind)&~sums(xind,yind)&sand(xind+1,yind+1))+...
        (or12(xind,yind)&~sums(xind,yind)&sand(xind,yind+1))+...
        (sums(xind,yind)&sand(xind,yind));
    sandNew(xind+1,yind)=...
        (and12(xind,yind)&~sums(xind,yind)&sand(xind,yind+1))+...
        (or12(xind,yind)&~sums(xind,yind)&sand(xind,yind))+...
        (sums(xind,yind)&sand(xind+1,yind));
    sandNew(xind,yind+1)=...
        (and12(xind,yind)&~sums(xind,yind)&sand(xind+1,yind))+...
        (or12(xind,yind)&~sums(xind,yind)&sand(xind+1,yind+1))+...
        (sums(xind,yind)&sand(xind,yind+1));
    sandNew(xind+1,yind+1)=...
        (and12(xind,yind)&~sums(xind,yind)&sand(xind,yind))+...
        (or12(xind,yind)&~sums(xind,yind)&sand(xind+1,yind))+...
        (sums(xind,yind)&sand(xind+1,yind+1));
    sand=sandNew;
    set(img,'cdata',cat(3,z,sand,gnd))
    pause(0.1)
end