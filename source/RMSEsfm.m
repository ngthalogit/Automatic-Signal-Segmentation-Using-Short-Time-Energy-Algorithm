function [ error ] = RMSEsfm( point )
%RMSElm: RMSE cho fiel studio_female.wav
%point: mang chua toa do phan doan
%fn: ten file
x = point;
y = [ 0.56 2.48 4.393 2.155 ]; %mang chua toa do phan doan thu cong
error = norm(x-y)*sqrt(1/length(y));
end
