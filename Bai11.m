t = (0.0:0.1:10.0)
s = 20*sin(2*pi*5.*t)
y = round(s)
plot(t,round(s))
grid on
