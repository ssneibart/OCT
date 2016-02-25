function [DC_Image] = dispersionComp(E2,E3,BGS)
%dispersionComp Summary of this function goes here
    % Made: Shane Solomon Neibart 2/24/16
    % Revised:

n = linspace(-1,1,2048);
DC_vector = exp(-1i.*(E2.*n.^2 + E3.*n.^3));
DC_matrix = repmat(DC_vector, size(BGS,1), 1);
DC_Image = BGS.*DC_matrix; 
end

