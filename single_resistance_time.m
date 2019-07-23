clear all;

hr1 = [37 150/2];
hr2 = [15 11/2 22/3];
hr3 = [6 12/2 12/3];

x = [1 2 3];
y = [mean(hr1) mean(hr2) mean(hr3)];


figure; 
plot(x,y,'k-o');

xlabel('Immersion time (hr)');
ylabel('Resistance (\Omega\\cm)');
set(gca,'Fontname','CMU bright','Fontsize',14);
xlim([0.75 3.25]);
ylim([0 61.33]);
grid off;