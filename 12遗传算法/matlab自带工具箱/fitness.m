function [ f ] = fitness( x )

if (x>2)||(x<-2)
    f=inf;
else
    f=-(200*exp(-0.05*x)*sin(x));

end