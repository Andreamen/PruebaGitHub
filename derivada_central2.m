%------------------------Derivacion centrada-------------------------
syms x
f=input ('Ingrese la funcion =   ');
d=diff (f);
dd=diff (d);
x=input ('Ingrese el valor de x para derivar =   ');


%Evaluamos la derivada de la funcion en el x dado para obtener el error.
df=subs (d,x);
ddf=subs (dd,x);
h=input ('Ingrese el ancho del intervalo =    ');


%Procedemos a calcular la primera derivada
fx=(subs (f,x+h)-subs (f,x-h))/2*h
err=abs ((df-fx))


%Procedemos a calcular la segunda derivada
fxx=(subs (f,x+h)-2*subs(f,x)+subs (f,x-h))/h^2
err2=abs((ddf-fx))
