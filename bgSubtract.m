function [BGSImage] = bgSubtract(RAW, BG)
%bgSubtract Subtract background image intensity from raw image
    % Made: Shane Solomon Neibart 2/24/16
    % Revised:

BG_avg_vector = mean(BG,1); % averaging down A-lines
BG_avg_matrix = repmat(BG_avg_vector, size(RAW,1),1);
BGSImage = double(RAW)-BG_avg_matrix;

end

