[x,y]=meshgrid(-3:.2:3,-3:.2:3);
z=x.^2+x.*y+y.^2;
surf(x,y,z);
box on;
set(gca,'FontSize',16);
zlabel('z');
xlim([-4,4]);
xlabel('x');
ylim([-4,4]);
ylabel('y');
%imagesc(z);
%axis square;
%xlabel('x');
%ylabel('y');%色彩也是一种维度