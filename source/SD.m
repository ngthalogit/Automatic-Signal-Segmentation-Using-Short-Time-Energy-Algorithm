function [ sd ] = SD( s )
%SD: h�m t�nh do lech chuan
%s: tap du lieu
%sd: do lech chuan
avg = mean(s); %trung b�nh cong cua tap du lieu
sd = sqrt((norm(s-avg).^2)/(length(s)-1));
end


