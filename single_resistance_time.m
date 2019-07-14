hr1 = [37 150/2];
hr2 = [15 11/2 22/3];
hr3 = [6 12/2 12/3];

x = [1 2 3];
y = [mean(hr1) mean(hr2) mean(hr3)];


 
 
plot(x,y,'k-o');
%axis([0 60 0 5]);

xlabel('Immersion time (hr)','Fontsize',24);
ylabel('Resistance (\Omega\\cm)','Fontsize',24);
set(gca,'Fontname','CMU bright','Fontsize',18);
grid off;