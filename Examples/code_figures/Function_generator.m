% EOT-JESS
% Working script to plot the function 
% x3 ?6x2 +11x?6

x=linspace(0.5,3.5,50);

handF1 = figure()
plot(x,x.^3-6*x.^2+11*x-6);
[c,h,v] = StdFigForm('Solution equation', 'x', 'y');
set(h,'FontWeight', 'Normal');
set(v,'FontWeight', 'Normal');

hold on;