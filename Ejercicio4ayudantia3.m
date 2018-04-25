[x, n] = escalon(0, -10, 10);
x= 0.9.^n
w = [0 : pi/200 : pi];
X = dtft(x, n, w);
subplot 221; plot(w/pi, abs(X)); grid
xlabel('w / Pi [rad/m]'); title('Magnitud')
subplot 222; plot(w/pi, unwrap(angle(X))/pi); grid
xlabel('w / Pi [rad/m]'); title('Angulo / Pi [rad]')