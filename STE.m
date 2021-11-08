function [ e ] = STE( nR, nL, arr )
%arr: mang bien do tin hieu
%e: nang luong cua moi khung
%nR: can trai
%nL: can phai
e = 0; 
for i = nR:nL
    e = e + arr(i).^2; 
end
end

