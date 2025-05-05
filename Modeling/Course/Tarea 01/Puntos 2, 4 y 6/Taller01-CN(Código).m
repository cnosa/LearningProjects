%%%% Ejercicio 2

I2 = [0.5 1 2 3 4 ;7 5.2 3.8 3.2 2.5]; %Datos proporcionados
%Matriz y vector asociadas
A2 = transpose([exp(-1.5*I2(1,:)); exp(-0.3*I2(1,:)); exp(-0.05*I2(1,:))]);
y2 = transpose(I2(2,:));

% Sistema por mínimos cuadrados
c2 = mldivide(A2'*A2,A2'*y2);

%Gráfica
X2 = 0:0.01:max(I2(1,:)+1); Y2= c2(1)*exp(-1.5*X2) + c2(2)*exp(-0.3*X2) + c2(3)*exp(-0.05*X2);
plot(X2,Y2,"b-",I2(1,:),I2(2,:),"r+",'LineWidth',1.5)
box on
xlabel('Eje X')
ylabel('Eje Y')
title('Comparacion entre modelo y datos')
[a,b]=legend('Modelo','Datos','Location','northeast');
set(b(1),'Color','b')
set(b(2),'Color','r')

%Pronóstico
%Microoganismos inicialmente
c2(1)*exp(-1.5*0) + c2(2)*exp(-0.3*0) + c2(3)*exp(-0.05*0);
%Microorganismos en 1h y media
c2(1)*exp(-1.5*1.5) + c2(2)*exp(-0.3*1.5) + c2(3)*exp(-0.05*1.5);
%Microorganismos en 5h y media
c2(1)*exp(-1.5*5.5) + c2(2)*exp(-0.3*5.5) + c2(3)*exp(-0.05*5.5);


%% 


%%%% Ejercicio 4

I4 = [0.25 1 1.5 2.5 7.5; -10.8 13.5 16.4 28.7 51.3]; %Datos proporcionados
%Matriz y vector asociadas
A4 = transpose([ones(1,5);log10(I4(1,:))]);
y4 = transpose(I4(2,:));

% Sistema por mínimos cuadrados
c4 = mldivide(A4'*A4,A4'*y4);

%Gráfica
X4 = 0.25:7.25/100:7.5; Y4= c4(1) + c4(2)*log10(X4);
plot(X4,Y4,"b-",I4(1,:),I4(2,:),"r+",'LineWidth',1.5)
box on
xlabel('Eje X')
ylabel('Eje Y')
title('Comparacion entre modelo y datos')
[a,b]=legend('Modelo','Datos','Location','northeast');
set(b(1),'Color','b')
set(b(2),'Color','r')


%% 


%%%% Ejercicio 6

%%
imshow('angeles.jpg')
[x1,y1] = ginput(22);
Eleft = [x1.*x1 y1.*y1 x1.*y1 x1 y1];
% Sistema por mínimos cuadrados
cleft = mldivide(Eleft'*Eleft,10000*Eleft'*ones(22,1));

%%
imshow('angeles.jpg')
[x2,y2] = ginput(22);
Eright = [x2.*x2 y2.*y2 x2.*y2 x2 y2];
% Sistema por mínimos cuadrados
cright = mldivide(Eright'*Eright,10000*Eright'*ones(22,1));

%% 
plot(x2,y2,'ro')

