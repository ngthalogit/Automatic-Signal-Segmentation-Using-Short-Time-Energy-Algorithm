function [ error ] = RMSElm( point )
%RMSElm: RMSE cho fiel lab_male.wav
%point: mang chua toa do phan doan
%fn: ten file
x = point;
y = [ 0.934 2.35 4.1 6.7 8.13 9.584 9.953 8.38 7.027 4.4 2.69 1.32 ]; %mang chua toa do phan doan thu cong
error = norm(x-y)*sqrt(1/length(y));
end

