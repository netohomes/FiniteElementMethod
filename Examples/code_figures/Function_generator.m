% EOT-JESS
% Working script to plot the function 
% x3 ?6x2 +11x?6

x=linspace(1,3,50);



handF1 = plot(x,x.^3-6*x.^2+11*x-6);
[c,h,v] = StdFigForm(handF1,'Solution equation', 'x', 'y');
set(h,'FontWeight', 'Normal');
set(v,'FontWeight', 'Normal');





