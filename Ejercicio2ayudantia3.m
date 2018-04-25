w = 0 : (pi/20) : pi;
X = 5*exp(j*w) + 4 + 3*exp(-j*w) + 2*exp(-j*2*w) + 1*exp(-j*3*w);
subplot 221; plot(w/pi, abs(X)); grid 
xlabel('w / Pi [rad/m]'); title('Magnitud')
subplot 222; plot(w/pi, angle(X)/pi); grid 
xlabel('w / Pi [rad/m]'); title('Angulo / Pi [rad]')