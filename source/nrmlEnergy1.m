function [ x ] = nrmlEnergy1( E )
%nrmlEnergy1: ham chuan hoa nang luong theo GTNN,GTLN
%E: mang nang luong can chuan hoa
%x: mang nang luong da duoc chuan hoa
x = (E-min(E))/(max(E)-min(E)); 
end

