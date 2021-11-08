[y, Fs] = audioread('studio_female.wav');
duration = linspace(0, length(y)/Fs, length(y));
plot(duration,y);
line([0.56 0.56], ylim, 'Linestyle', '--', 'color', 'red');
line([2.48 2.48], ylim, 'Linestyle', '--', 'color', 'red');
line([2.155 2.155], ylim, 'Linestyle', '--', 'color', 'red');
line([4.393 4.393], ylim, 'Linestyle', '--', 'color', 'red');