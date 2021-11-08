function [spfr, fr] = divideFrame( y, Fs )
%y : tin hieu vao
%Fs: tan so lay mau cua tin hieu vao y
%spfr: so mau moi khung
%fr: so khung
period = 0.01;%thoi gian cua moi khung
spfr = period*Fs;
fr = ceil(length(y)/spfr);
end

