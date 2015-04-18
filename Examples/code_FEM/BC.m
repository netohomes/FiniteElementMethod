function [K, F] = BC(K, F, nodes_Dirich, nodes_Newman, y_Dirich, yp_Newman )

    n_nodes_Dirich  = size(nodes_Dirich,1);
    n_nodes_Newman = size(nodes_Newman,1);
    
    F(:) = F(:) - K(:,nodes_Dirich) * (y_Dirich);
    F(nodes_Newman) = F(nodes_Newman) + yp_Newman;
    

        K(:,nodes_Dirich) = zeros(size(K,1),size(nodes_Dirich,1));
        K(nodes_Dirich,:) = zeros(size(nodes_Dirich,1),size(K,1));
        K(nodes_Dirich, nodes_Dirich) = eye(size(nodes_Dirich,1));

    
    F(nodes_Dirich) = y_Dirich;


end