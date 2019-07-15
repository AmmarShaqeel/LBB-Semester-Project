x = 1:4;
y1 = [206.67 6.33 2.39 1.14];
c1 = 1./y1;
err1 =[259.27,1.15,0.28,0.14];

y2 = [60000 14.33 1.81 0.92];
c2 = 1./y2;
err2 =[nan , 19.21 ,1.13,0.04];

y3 = [270.84 4.41 2.01 1.24];
c4 = 1./y4;
err3 =[285.83,1.05,0.36,0.29];

y4 = [531.00 5.98 1.94 1.16];
c4 = 1./y4;
err4 =[544.98,1.28,0.28,0.13];


axis([1 4 0 600]);

hold on;
box on;
plot(x,y1,':o');
plot(x,y2,'-x');
plot(x,y3,'-.+');
plot(x,y4,'--*');

legend('0.004wt','0.008wt','0.016wt','0.032wt')
xlabel('Number Of Cycles','Fontsize',24);
ylabel('Resistance (\Omega\\cm)','Fontsize',24);
set(gca,'Fontname','CMU bright','Fontsize',18);

