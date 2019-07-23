a = 132 * 10^(-6);
k_m = linspace(1*10^(-5), 1*10^(-8) , 10000);

t = a./(k_m.*2);

semilogx(k_m,t,'k');

ylabel('Process Time (s)');
xlabel('Diffusion Constant (Log(ms^-^1))');

set(gca,'Fontname','CMU bright','Fontsize',14);
xlim([0.50000e-08 1.5000e-05]);
ylim([-400 7000]);

print(gcf,'diff_time.png','-dpng','-r900');