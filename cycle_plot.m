x = 1:4;
y1 = [206.67 6.33 2.39 1.14];
err1 =[259.27,1.15,0.28,0.14];

y2 = [nan 14.33 1.81 0.92];
err2 =[nan , 19.21 ,1.13,0.04];

y3 = [270.84 4.41 2.01 1.24];
err3 =[285.83,1.05,0.36,0.29];

y4 = [531.00 5.98 1.94 1.16];
err4 =[544.98,1.28,0.28,0.13];




hold on;
errorbar(x,y1,err1);
errorbar(x,y2,err2);
errorbar(x,y3,err3);
errorbar(x,y4,err4);