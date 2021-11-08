function [ error ] = RMSEsm( point )
%RMSElm: RMSE cho fiel studio_male.wav
%point: mang chua toa do phan doan
%fn: ten file
x = point;
y = [ 0.7 3.29 4.82 6 7.29 5.725 4.455 2.973 ]; %mang chua toa do phan doan thu cong
error = norm(x-y)*sqrt(1/length(y));
end

