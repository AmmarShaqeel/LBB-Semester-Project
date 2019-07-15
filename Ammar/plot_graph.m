load('30min2cm.mat');

semilogy(strain, abs(resistance),'k');
ax = gca;
ax.XLim = [-0.1,0.8];

xlabel('Strain (\DeltaL/L)');
ylabel('Resistance (\Omega/cm)');
set(gca,'Fontname','CMU bright','Fontsize',14);