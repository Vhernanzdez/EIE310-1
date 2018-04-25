%mi rut es 19.891.504-1
A=1 ; B=9 ; C=8 ; D=9 ; E=1 ; F=5 ; G=0 ; H=4 ; I=1;
w = [-5 : 0.01 : 5] * pi;
X = exp(j*w) ./ (exp(j*w) - 0.5);
plot(w/pi, abs(X)); grid
xlabel('w / Pi [rad/m]');
title('Magnitud de X(w)'); 