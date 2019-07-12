x = [5, 15, 30, 60];
y = [4.1 1.94 1.09 1.24];

plot(x,y,'-o');
axis([0 60 0 5]);

xlabel('Cycle time (mins)','Fontsize',24);
ylabel('Resistance (ohm)','Fontsize',24);
title('Average final resistance vs cycle time','Fontsize',24);
set(gca,'Fontsize',18);
grid off;