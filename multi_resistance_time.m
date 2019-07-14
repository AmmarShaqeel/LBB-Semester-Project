x = [5, 15, 30, 60];
y = [4.1 1.94 1.09 1.24];

plot(x,y,'k-o');
axis([0 60 0 5]);

xlabel('Immersion time (mins)','Fontsize',24);
ylabel('Resistance (\Omega\\cm)','Fontsize',24);
set(gca,'Fontname','CMU bright','Fontsize',18);
grid off;