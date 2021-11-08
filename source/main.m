clear all;
[y, Fs] = audioread('studio_female.wav');%doc file
%y: mang bien do tin hieu
%Fs: tan so lay mau cua tin hieu vao y
thresHold = 0.54; %chon nguong chuan hoa nang luong sau khi xem xet 4file chuan hoa va lay logarit
duration = length(y)/Fs; %thoi gian cua file
t = linspace(0, duration, length(y));
[spfr, fr] = divideFrame(y, Fs); %goi ham chia khung
%spfr: so mau cua moi khung
%fr: so mau khung chia duoc
[E, logE] = computeEnergy(y, spfr, fr); %goi ham tinh nang luong tin hieu vao y
%E: mang nang luong
%logE: mang nang luong lay logarit
x1 = nrmlEnergy1(logE); %chuan hoa nang luong logE voi ham chuan hoa theo GTNN,GTLN
x2 = nrmlEnergy2(logE);%chuan hoa nang luong logE voi ham chuan hoa theo do lech chuan
subplot(311);
plot(t, y); %ve tin hieu y
title('Tin hieu y');
subplot(312)
plot(x1);%ve nang luong da chuan hoa va lay logarit
title('Nang luong chuan hoa');
subplot(313)
point = automaticVoiceSpr(y, Fs, thresHold, spfr, fr, logE);%phan doan tieng noi va khoang lang
%point: mang chua toa do phan doan
title('Phan doan tieng noi va khoang loang');
error = RMSEsfm(point);
disp(error);
