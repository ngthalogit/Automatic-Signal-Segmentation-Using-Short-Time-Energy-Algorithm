function [ error ] = RMSElfm( point )
%RMSElm: RMSE cho fiel lab_female.wav
%point: mang chua toa do phan doan
%fn: ten file
x = point;
y = [ 0.7 1.97 3.45 4.68 6.09 7.13 7.827 6.5 5.15 3.857 2.473 1.225 ]; %mang chua toa do phan doan thu cong
error = norm(x-y)*sqrt(1/length(y));
end


