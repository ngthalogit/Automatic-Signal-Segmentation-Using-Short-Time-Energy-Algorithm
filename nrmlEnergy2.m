function [ x ] = nrmlEnergy2( E )
%nrmlEnergy1: hàm chuan hoa nang luong theo do lech chuan
%E: mang nang luong can chuan hoa
%x: mang nang luong da duoc chuan hoa
avg = mean(E); %gia tri trung binh cua tap du lieu
x = (E-avg)/SD(E);
end
