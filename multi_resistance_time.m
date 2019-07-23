clear all;

x = [5, 15, 30, 60];
y = [4.1 1.94 1.09 1.24];

figure;
plot(x,y,'k-o');
axis([0 65 0 5.34]);

xlabel('Immersion time (mins)');
ylabel('Resistance (\Omega/cm)');
set(gca,'Fontname','CMU bright','Fontsize',14);
grid off;