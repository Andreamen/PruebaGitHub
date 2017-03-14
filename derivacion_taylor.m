clc; clear all;
 
fprintf('PROGRAMA PARA EFECTUAR LA DERIVACIÓN DE UN SET DE DATOS\n\n');
 
fprintf('El programa le brindará la 1ª,2ª,3ª y 4ª derivada\n\n');
 
fprintf('Ingrese datos de variable independiente:\n');
 
fprintf('(RECUERDE QUE ESTOS DATOS DEBEN SER REGULARMENTE ESPACIADOS\n');
 
x=input('Ej.[0 1 2 3 4 5 6 7 8 9 10])');
 
n=length(x);
 
e=0;
 
for i=1:n-3%este bucle verificará que el tamaño de paso sea el mismo
 
if (x(1,i+1)-x(1,i))~=(x(1,i+2)-x(1,i+1))
 
e=e+1;
 
break;
 
end
 
end
 
if e>0,error ('Los datos deben ser igualmente espaciados');end
 
fprintf('Ingrese datos de la variable dependiente: \n');
 
y=input('(Ej.[1.4 2.1 3.3 4.8 6.8 6.6 8.6 7.5 8.9 10.9 10])');
 
h=x(1,2)-x(1,1);
 
n=length(x);
 
pridrv=zeros(1,n);
 
%.................................--------................................
 
%Realizamos la primera derivada de los datos ingresados por diferencias
 
%finitas.
 
%primer dato, diferencias finitas hacia adelante
 
pridrv(1,1)=(y(1,2)-y(1))/h;
 
%Desde el segundo dato hasta el penúltimo, Direncias finitas centradas
 
for i=2:n-1
 
pridrv(1,i)=(y(1,i+1)-y(1,i-1))/(2.*h);
 
end
 
%Para el último dato, diferencias finitas hacia atras
 
pridrv(1,n)=(y(1,n)-y(1,n-1))/h;
 
fprintf('\n\nRESULTADOS!\n');
 
fprintf('Las primeras derivadas para los datos ingresados son, respecticamente :\n');
 
disp(pridrv);
 
%Ahora Desarrollaremos la segunda derivada
 
segdrv=zeros(1,n);
 
if n<3
 
fprintf('No se puede calcular la segunda derivada con solo 2 datos\n');
 
else
 
segdrv(1,1)=(y(1,3)-2.*y(1,2)+y(1,1))/h.^2;
 
for i=2:n-1
 
segdrv(1,i)=(y(1,i+1)-2.*y(1,i)+y(1,i-1))/h.^2;
 
end
 
segdrv(1,n)=(y(1,n)-2.*y(1,n-1)+y(1,n-2))/h.^2;
 
fprintf('Las segundas derivadas para los datos ingresados son, respectivamente: \n');
 
disp(segdrv);
 
end
 
%Tercera derivada:
 
 
if n<5
 
if n<4
 
fprintf('No se puede hallar la tercera derivada con menos de 4 datos\n');
 
else
 
fprintf('Con cuatro datos solo podemos hallar terceras derivadas en los extremos');
 
fprintf('\n');
 
exterdrv=zeros(1,2);
 
exterdrv(1,1)=(y(1,4)-3.*y(1,3)+3.*y(1,2)-y(1,1))/h.^3;
 
exterdrv(1,2)=(y(1,n)-3.*y(1,n-1)+3.*y(1,n-2)-y(1,n-3))/h.^3;
 
fprintf('Estas son: ');
 
disp(exterdrv);
 
end
 
else
 
terdrv=zeros(1,n);
 
terdrv(1,1)=(y(1,4)-3.*y(1,3)+3.*y(1,2)-y(1,1))/h.^3;
 
terdrv(1,2)=(y(1,5)-3.*y(1,4)+3.*y(1,3)-y(1,2))/h.^3;
 
for i=3:n-2
 
terdrv(1,i)=(y(1,i+2)-2.*y(1,i+1)+2.*y(1,i-1)-y(1,i-2))/(2*h.^3);
 
end
 
terdrv(1,n-1)=(y(1,n-1)-3.*y(1,n-2)+3.*y(1,n-3)-y(1,n-4))/h.^3;
 
terdrv(1,n)=(y(1,n)-3.*y(1,n-1)+3.*y(1,n-2)-y(1,n-3))/h.^3;
 
fprintf('Las terceras derivadas para los datos ingresados son, respectivamente: \n');
 
disp(terdrv);
 
end
 
%Cuarta derivada
 
if n<6
 
if n<5
 
fprintf('No se puede hallar la cuarta derivada con menos de 5 datos\n');
 
else
 
fprintf('Con cinco datos solo podemos hallar cuartas derivadas en los extremos\n');
 
excuadrv(1,1)=(y(1,5)-4.*y(1,4)+6.*y(1,3)-4.*y(1,2)+y(1))/h.^4;
 
excuadrv(1,2)=(y(1,n)-4.*y(1,n-1)+6.*y(1,n-2)-4.*y(1,n-3)+y(n-4))/h.^4;
 
fprintf('Estas son:');
 
disp(excuadrv);
 
end
 
else
 
cuadrv=zeros(1,n);
 
cuadrv(1,1)=(y(1,5)-4.*y(1,4)+6.*y(1,3)-4.*y(1,2)+y(1))/h.^4;
 
cuadrv(1,2)=(y(1,6)-4.*y(1,5)+6.*y(1,4)-4.*y(1,3)+y(2))/h.^4;
 
for i=3:n-2
 
cuadrv(1,i)=(y(1,i+2)-4.*y(1,i+1)+6.*y(1,i)-4.*y(1,i-1)+y(1,i-2))/h.^4;
 
end
 
cuadrv(1,n)=(y(1,n)-4.*y(1,n-1)+6.*y(1,n-2)-4.*y(1,n-3)+y(n-4))/h.^4;
 
cuadrv(1,n-1)=(y(1,n-1)-4.*y(1,n-2)+6.*y(1,n-3)-4.*y(1,n-4)+y(n-5))/h.^4;
 
fprintf('Las cuartas derivadas para los datos ingresados son, respectivamente: \n');
 
disp(cuadrv);
 
end