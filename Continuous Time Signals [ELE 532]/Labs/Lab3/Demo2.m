%x=linspace(-30,30,10001);
 %x = linspace(-30,30,10001);
 %n = linspace(-30,30,10001)
 n = (-5:5);
 D_n = (1/4) * (sin((pi/4.0)*n)./((pi/4.0)*n)); %our X_3 Dns
%y=sin(x)./x;
subplot(1,2,1); stem(n,D_n,'.k');
%axis([-30 30-1 1]);
%axis([-30 30 -1 1]);
%xlabel('x')
%ylabel('y')
%title('Fred Smith')