load('30min2cm.mat');

semilogy(strain, abs(1./resistance),'k');
ax = gca;
ax.XLim = [-0.1,0.8];

xlabel('Strain (\Deltacm/cm)');
ylabel('Conductance (S/cm)');
set(gca,'Fontname','CMU bright','Fontsize',14);
print(gcf,'strain_conductance.png','-dpng','-r900');