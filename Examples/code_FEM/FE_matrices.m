function [K, F] = FE_matrices(T,X,h)
    nelem = size(T,1);
    nnodes = nelem +1;
    
    K = spalloc(nnodes,nnodes,nelem*4);
    F = zeros(nnodes,1);
    
for i = 1:nelem
    Te = T(i,:);
    Xe = X(Te',:);
    
    Ke = [1/(Xe(2) -Xe(1)), -1/(Xe(2) -Xe(1)); ...
        -1/(Xe(2) -Xe(1)), 1/(Xe(2) -Xe(1))];
    
    
    Fe = - [- 2*Xe(1)^2 + Xe(1)*Xe(2) + 6*Xe(1) + Xe(2)^2 - 6*Xe(2) ; - 2*Xe(1)^2 + Xe(1)*Xe(2) + 6*Xe(1) + Xe(2)^2 - 6*Xe(2)];
    
    %No heat source
    
    %Fe = [0;0];
    
    
    % Asembly
    K(i:i+1,i:i+1) = K(i:i+1,i:i+1) + Ke;
    F(i:i+1) = F(i:i+1) + Fe;
    
end
    
    



end
