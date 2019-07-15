conc016 = [300/2 35/2];
conc008 = [100/2 150/2];
conc003 = [15 11/2 60/3];

x = [0.016 0.008 0.0032];
y = [mean(hr1) mean(hr2) mean(hr3)];
 
 
plot(x,y,'k-X');
%axis([0 60 0 5]);

xlabel('Ascorbic Acid Concentration (wt)','Fontsize',24);
ylabel('Resistance (\Omega\\cm)','Fontsize',24);
set(gca,'Fontname','CMU bright','Fontsize',18);
grid off;