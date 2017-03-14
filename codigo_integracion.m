%%Script que calcúla numéricamente la primera derivada de la función:
%%sin(x)^2.
clear all
close all
clc
%Definiendo intervalos
x=0:0.01:1;
%función original:
funcion=(sin(x)).^2;
%preparando parámetros:
s=length(funcion); %longitud de la funcion
Y=zeros(1,s); % espacio de memoria para la derivada numerica
% Algoritmo de primera derivada
for k=2:s-1
Y(k)=(funcion(k+1)-funcion(k-1))/(2*0.01);
end
% Graficación de funciones teoricas y su compraración con la estimación
% numerica de la primer derivada
figure
subplot(2,1,1)
hold on
plot(x,funcion,'r') % función original
plot(x,2*sin(x).*cos(x), '-b') % derivada teorica de la funcion original
plot(x,Y,'ok') % derivada numerica obtenida
axis([0,1.04,0,1.1]);

xlabel('Vector <>')

ylabel('Funciones utilizadas')
text(0.02,0.8,'Funciones Sin^2(x) (rojo), derivada teorica (azul), derivada numerica (negro)')
box on
hold off 
subplot(2,1,2)
plot(2*sin(x).*cos(x),Y,'-b')% comparacion entre funciones;
% derivada teorica contra la derivada numerica
xlabel('Función 2*sin(x).*cos(x), derivada teorica')
ylabel('Derivada numerica obtenida')
axis([0,1.04,0,1.1]);
grid
%%% fin del script 