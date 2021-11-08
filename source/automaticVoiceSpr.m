function [ point ] = automaticVoiceSpr( y, Fs, thresHold, spfr, fr, logE )
%y: tin hieu vao
%Fs: tan so lay mau cua tin hieu vao y
%thresHold: nguong nang luong chuan hoa
%a: an Array using to store time variables at the boundaries
%spfr: so mau moi khung
%fr: so khung da chia
%logE: mang nang luong lay logarit
x = nrmlEnergy1(logE); %chuan hoa nang luong
time = 0; %bien kiem tra thoi gian cua khoang lang
duration = linspace(0, length(y)/Fs, length(y));	
point = []; % mang chua toa do phan doan
plot(duration, y); 
%xet vong lap tu trai sang phai cua tin hieu y
for i = 1:fr
    if x(i) >= thresHold %so sanh nang luong chuan hoa cua khung i
        if time >=20 %kiem tra co phai khoang lang hay khong
            p = i*spfr/Fs - (spfr/2)/Fs;%lay toa do phan doan
            point = [point p];
            line([p p], ylim, 'Linestyle', '--', 'color', 'red');
        end
        time = 0; %khoi tao lai gia tri time trong truong hop gap nang luong vuot nguong chuan hoa nhung khong du thoi gian cua mot khoang lang
    else
        time = time +1;
    end
end
%xet vong lap tu phai sang trai cua tin hieu y
for i = length(x):-1:1
    if x(i) >= thresHold %so sanh nang luong chuan hoa cua khung i
        if time >=20 %kiem tra co phai khoang lang hay khong
             p = i*spfr/Fs - (spfr/2)/Fs;%lay toa do phan doan
             point = [point p];
             line([p p], ylim, 'Linestyle', '--','color', 'red');
        end
        time = 0;%khoi tao lai gia tri time trong truong hop gap nang luong vuot nguong chuan hoa nhung khong du thoi gian cua mot khoang lang

    else
        time = time +1;
    end
end
end

