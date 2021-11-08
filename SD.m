function [ sd ] = SD( s )
%SD: hàm tính do lech chuan
%s: tap du lieu
%sd: do lech chuan
avg = mean(s); %trung bình cong cua tap du lieu
sd = sqrt((norm(s-avg).^2)/(length(s)-1));
end


