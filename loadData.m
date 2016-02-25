function [RawImage, Background] = loadData(TapeNumber)
%loadData Loads 3 specified images into a matrix
    % Made: Shane Solomon Neibart 2/24/16
    % Revised: 

RawImage = eval(['imread(''Data/tape_' num2str(TapeNumber) '_RAW.tif'')']);
Background = eval(['imread(''Data/tape_' num2str(TapeNumber) '_RAW_BG.tif'')']);

end

