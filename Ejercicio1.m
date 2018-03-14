%mi rut es 19.891.504-1
A=1 ; B=9 ; C=8 ; D=9 ; E=1 ; F=5 ; G=0 ; H=4 ; I=1;
t=0: 0.3: 30; v= exp(-((B+A)/(2*C*(D+E))) *t).*sin(t);
subplot 121; plot(t,v);title('PLOT');
xlabel('Tiempo [seg]'); ylabel('Volts'); grid;
subplot 122; stem(t,v); title('STEM');
xlabel('Tiempo [seg]'); ylabel('Volts'); grid;