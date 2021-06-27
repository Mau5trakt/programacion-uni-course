function [] = moody() 
clear
Re = logspace(2,6,50);
K = [0,0.0001,0.001,0.002,0.005,0.01,0.02,0.03,0.05];
f = zeros(length(Re),length(K));

for i=1:length(Re)
    for j = 1:length(K)
if Re(i)<2300
f(i,j) = 64/Re(i);
elseif Re(i)>=2300
    f(i,j)=colebrook(Re(i),K(j));
end

    end
end
Re_=ones(size(K))*Re(50);
f_=f(50,:);

for j = 1:length(K)
    loglog(Re,f(:,j))
    hold on
    grid on
end
title('Diagrama de Moody')
xlabel('Numero de Reynolds, Re = \rhoD\vee/\mu')
yyaxis left
ylabel('Factor de friccion, \itf')

ax = gca;
ax.YTick = [0.01 0.02 0.03 0.04 0.06 0.08 0.1 0.2 0.3 0.4 0.6 0.8 1];
ax.YTickLabel = {'0.01','0.02','0.03','0.04','0.06','0.08','0.10','0.20','0.30','0.40','0.60','0.80','1.00'};

for m = 1:length(K)
    text(Re_(m),f_(m),num2str(K(m)),'Color','b')
end
yyaxis right
ylabel('Rugosidad Relativa,\epsilon = K/D','HorizontalAlignment','left','Color','b');
 set(gca,'ytick',[])
