clear
F_0=0.5;
m=0.3;
w=1;
w_0=1.1;
tval=0:0.01:25;
yss=@(t) (F_0/(2*m.*w_0))*t.*sin(w_0.*t);
plot(tval,yss(tval));
hold on
yv=@(t) (F_0/(2*m.*w_0))*t;
yw=@(t) -(F_0/(2*m.*w_0))*t;
plot(tval,yv(tval));
plot(tval,yw(tval));
title('3b');
xlabel('t');
ylabel('u');
hold off