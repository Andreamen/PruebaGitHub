%derivada de la funcion Y=x.*exp(x) en el
%punto x=2 usando diferencia central con dos 
%puntos, se grafica el error como funcion del paso
xo=2;
h=0.5:-0.05:0.05;
n=length(h)-1;
disp(' DIFERENCIA CENTRAL ');
 for j=1:length(h)
     x1=xo-h;
     x2=xo+h;
     yo=xo.*exp(xo);
     y1=x1.*exp(x1);
     y2=x2.*exp(x2);
     y=(y2-y1)./(2.*h);
 end
 fprintf('\n h=%5.2f' ,h);
 fprintf('\n y=%5.8f' ,y);
 w=abs(exp(2)+2.*exp(2)- y);%error
 plot(h,abs(exp(2)+2.*exp(2)- y), 'ro'), grid
 