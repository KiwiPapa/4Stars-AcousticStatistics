t=0:0.01:2*pi;
y=sin(t);
y2=y+2;
plot(t,y,t,y2,'r')
hold on
n=length(t);
for i=1:n
x1=[t(i),t(i)];
y1=[y(i),y2(i)];
plot(x1,y1,'k');
end