clear all;

conc016 = [300/2 35/2];
conc008 = [100/2 150/2];
conc003 = [15 11/2 60/3];

x = [0.016 0.008 0.0032];
y = [mean(conc016) mean(conc008) mean(conc003)];

figure; 
plot(x,y,'k-X');

xlabel('Ascorbic Acid Concentration (wt)');
ylabel('Resistance (\Omega/cm)');
set(gca,'Fontname','CMU bright','Fontsize',14);
xlim([0 0.0192]);
ylim([0 97.25]);
grid off;