function [ E, logE ] = computeEnergy( y, spfr, fr )
%y: tin hieu vao
%Fs: tan so lay mau
%E: mang chua nang luong cua cac khung
%logE: mang chua nang luong lay logarit cua cac khung
%spfr: so mau cua moi khung
%fr: so khung da chia duoc
logE = zeros(1, fr);%khoi tao mang co fr phan tu
E = zeros(1, fr);% khoi tao mang co fr phan tu
j = 1; %bien dem
for i = 1:spfr:length(y)
    %tinh nang luong cua khung cuoi cung
    if i+spfr > length(y)       
       	E(j) = STE(i, length(y), y);%goi ham tinh nang luong cua moi khung
       	logE(j) = log(E(j)); %lay logarit
       break;
    else
        E(j) = STE(i, i+spfr-1, y);%goi ham tinh nang luong cua moi khung
        logE(j) = log(E(j));%lay logarit
    end
    j = j + 1; %tang bien dem len 1 don vi
end
end
