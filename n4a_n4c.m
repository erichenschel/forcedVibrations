clear
m=1;
k=1;
w_0=1;
d1=0.25;
d2=0.5;
d3=1;
d4=1.5;
d5=2; 
wval=0:0.01:2;
wd=@(d) sqrt((k/m)-((d.^2)/(2*m.^2)));
hold on
M=@(w) 1./(sqrt((m.^2).*(((w_0.^2)-w.^2).^2)+(d1.^2).*(w.^2)));
plot(wval,M(wval));
plot(wd(d1),M(wd(d1)),'*');
M=@(w) 1./(sqrt((m.^2).*(((w_0.^2)-w.^2).^2)+(d2.^2).*(w.^2)));
plot(wval,M(wval));
plot(wd(d2),M(wd(d2)),'*');
M=@(w) 1./(sqrt((m.^2).*(((w_0.^2)-w.^2).^2)+(d3.^2).*(w.^2)));
plot(wval,M(wval));
plot(wd(d3),M(wd(d3)),'*');
M=@(w) 1./(sqrt((m.^2).*(((w_0.^2)-w.^2).^2)+(d4.^2).*(w.^2)));
plot(wval,M(wval));
plot(wd(d4),M(wd(d4)),'*');
M=@(w) 1./(sqrt((m.^2).*(((w_0.^2)-w.^2).^2)+(d5.^2).*(w.^2)));
plot(wval,M(wval));
plot(wd(d5),M(wd(d5)),'*');
title('4a,4c');
xlabel('w');
ylabel('M(w)');
hold off