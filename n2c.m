clear
m=0.3;
F_0=0.5;
w=1;
w_0=1.1;
tval=0:0.01:126;
y=@(t) ((2*F_0)/(m*(w_0.^2-w.^2)))*sin(((w_0-w).*t)/2);
plot(tval,y(tval));
hold on
ym=@(t) -((2*F_0)/(m*(w_0.^2-w.^2)))*sin(((w_0-w).*t)/2);
plot(tval,ym(tval));
yn=@(t) (((2*F_0)/(m*(w_0.^2-w.^2))).*sin(((w_0-w).*t)/2)).*sin(((w_0+w).*t)/2);
plot(tval,yn(tval));
hold off
title('2c');
xlabel('t');
ylabel('u');
