x = 1:4;
y1 = [206.67 6.33 2.39 1.14];
c1 = ones(1,4)./y1;
err1 =[259.27,1.15,0.28,0.14];

y2 = [700*100 14.33 1.81 0.92];
c2 = ones(1,4)./y2;
err2 =[nan , 19.21 ,1.13,0.04];

y3 = [270.84 4.41 2.01 1.24];
c3 = ones(1,4)./y3;
err3 =[285.83,1.05,0.36,0.29];

y4 = [531.00 5.98 1.94 1.16];
c4 = ones(1,4)./y4;
err4 =[544.98,1.28,0.28,0.13];




hold on;

%conductivity plot
% plot(x,c1,'-o');
% plot(x,c2,'-b');
% plot(x,c3,'-x');
% plot(x,c4,'-.');

%resistance plot
plot(x,y1,'-o');
plot(x,y2,'-b');
plot(x,y3,'-x');
plot(x,y4,'-.');

a = axis;
axis([1 4 0 700]);
set(gca, 'XTick', 0:4);

xlabel('Number of Cycles','Fontsize',24);
ylabel('Resistance (ohm) per cm','Fontsize',24);
title('Effect of Cycles on Resistance','Fontsize',24);
legend('0.004', '0.008', '0.016', '0.032');
set(gca,'Fontsize',18);
grid off;
