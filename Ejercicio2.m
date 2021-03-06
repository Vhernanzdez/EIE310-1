clear
%mi rut es 19.891.504-1
A=1 ; B=9 ; C=8 ; D=9 ; E=1 ; F=5 ; G=0 ; H=4 ; I=1;
% Respuesta escal�n filtro IIR   
% y(n) = 0.1 x(n) + 0.9 y(n-1)
vi = 1;  % voltaje de entrada
a = 0.9;  % constante del filtro
dt = 10e-3; % 1/100 Hz = 10 mseg

t(1) = 0;  % �ndice 1  =>  t = 0 
vf(1) = 0; % �ndice 1  =>  t = 0 

for i = 2 : 41; 
 t(i) = (i-1) * dt; 
 vf(i) = (1-a) * vi + a * vf(i-1); 
end 
close; stem(t, vf); % gr�fico
xlabel('seg'); grid  