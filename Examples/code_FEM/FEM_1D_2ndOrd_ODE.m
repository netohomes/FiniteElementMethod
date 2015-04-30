% EOT JESS
%
% Academic 1D FEM code for exemplifying the basic of the method.
%
% Main data variables:
%     X: nodal coordinates
%     T: mesh connectivity
%         includes domain information
        

%output T, X, n_dirich, y_Dirich, yp_Newman, h
[T, X, nodes_Dirich, nodes_Newman, y_Dirich, yp_Newman, h] = GenerateMesh();

%output K, F
[K, F] = FE_matrices(T,X,h);

%BC
[K, F] = BC(K, F, nodes_Dirich, nodes_Newman, y_Dirich, yp_Newman );


u =zeros(size(X,1),1);
u = K\F
%u(nodes_Dirich) = y_Dirich;



plot(X,u)

hold on;

x=linspace(0.5,3.5,50);
plot(x,x.^3-6*x.^2+11*x-6);

  set(gcf, 'Color', [1,1,1]);
  set(gca,'YGrid','on','XGrid','on');
 




% plot solution
