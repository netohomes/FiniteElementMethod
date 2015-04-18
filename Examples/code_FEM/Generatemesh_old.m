function[T, X, nodes_dirich, nodes_newman, y_dirich, yp_newman] ...
    = GenerateMesh()
    % Variables:
    %   T: 
    %   X:
    %   nelem: number of elements
    
    
    Domain_boundary_left = 1;
    Domain_boundary_right = 3;
    nelem = 100;
    
    
    % values set as funciton of basic variables
    npoin = nelem + 1;
    
    T = zeros(nelem,2);
    X = zeros(neleme+1, 1);
    
    % Initialize T
    for i =1:nelem
        T(i,:) = [i,i+1];
    end
    
    X = linspace(Domain_boundary_left, Domain_boundary_right,nelem+1);
    
    
    %%Dirichlet boundary conditions:
    nodes_dirich = [1];
    y_ririch = [0];
    
    
    %%Newman boundary conitions:
    nodes_newman = [nelem+1];
    yp_newman = [2];

    
    
    
end

