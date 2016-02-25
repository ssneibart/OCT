function [C,p] = loadParams()
%loadParams Loads Parameters
    % Made: Shane Solomon Neibart 2/24/16
    % Revised:

C0 = 742.856;
C1 = 9.56435e-2;
C2 = -2.35188e-6;
C3 = -1.24951e-10;

C = [C0,C1,C2,C3];
p = 2047:0;

end

