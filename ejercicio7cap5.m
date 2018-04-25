%mi rut es 19.891.504-1
A=1 ; B=9 ; C=8 ; D=9 ; E=1 ; F=5 ; G=0 ; H=4 ; I=1;
b = [1];
a = [1 -0.9]; % notar signo de 0.9
w = [0 : 0.001 : 1] * pi;
H = freqz(b, a, w); M = abs(H); A = (180/pi) * angle(H);
subplot 221; plot(w/pi, M); title('Magnitud');
xlabel('w / Pi [rad/m]'); grid;
subplot 222; plot(w/pi, A); title('Angulo');
xlabel('w / Pi [rad/m]'); grid;