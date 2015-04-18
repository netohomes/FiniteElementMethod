function[T, X, nodes_Dirich, nodes_Newman, y_Dirich, yp_Newman, h] ...
    = GenerateMesh()
    % Variables:
    %   T: 
    %   X:
    %   nelem: number of elements
    
    
    Domain_boundary_left = 1;
    Domain_boundary_right = 3;
    nelem = 10;
    

    % values set as funciton of basic variables
    npoin = nelem + 1;
    
    T = zeros(nelem,2);
    X = zeros(nelem+1, 1);
    h = (Domain_boundary_right-Domain_boundary_left) / nelem;
    % Initialize T
    for i =1:nelem
        T(i,:) = [i,i+1];
    end
    
    X = linspace(Domain_boundary_left, Domain_boundary_right,nelem+1)';
    
    
    %%Dirichlet boundary conditions:
    nodes_Dirich = [1];
    y_Dirich = [0];
    
    
    %%Newman boundary conitions:
    nodes_Newman = [1];
    yp_Newman = [5];

    
    
    
end

