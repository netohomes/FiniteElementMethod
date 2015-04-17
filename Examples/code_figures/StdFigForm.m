function [c,h,v] = StdFigForm(handle,Title, xlab, ylab);

%LEYENDS NAMES
 c=title(Title);
 h=xlabel(xlab);
 v=ylabel(ylab);
 
 %figure color
 set(gcf, 'Color', [1,1,1]);
 set(gca,'YGrid','on','XGrid','on');
 
 %LEYENDS EDITION
 set(c,'FontSize',24);
 set(c,'Color','Black');
 set(c,'FontWeight','Bold');
 
 set(h,'FontSize',22);
 set(h,'Color','Black');
 set(h,'FontWeight','Bold');
 
 
 
 set(v,'FontSize',22);
 set(v,'Color','Black');
 set(v,'FontWeight','Bold');
 set(v,'Rotation',0);
 set(v,'HorizontalAlignment','Right');  
 
 
 
 
 %LINES EDITION
lineobj = findobj('type', 'line');
%set(lineobj, 'linewidth', 1.8);
%set(lineobj, 'Color', 'Black');
%set(lineobj, 'linestyle', '--');