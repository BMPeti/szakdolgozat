%egy minta egy feature abrazolasara, ahol az eredeti atlag alapu
%optimalizacio egy idealis parameterkombinaciojara kapott eredmenyt hasonlitom ossze az
%altalunk generalt parametereloszlasbol mintevetelezett
%parameterkombinaciora futatott modell eredmenyevel
%
%eredeti (33.93255264118097, -0.8345454545454075)
%elsokombo (-0.14744060137171763, -0.7898550724637122)
%masodikkombo (33.58775604641078, -0.8441558441557998)

x = [1,2,3]
y = [-0.8345454545454075,-0.7898550724637122,-0.8441558441557998]

figure

plot (x,y,'.', 'MarkerSize',10, 'Color','red')
xlim([0 4])
ylim('auto')
xlabel('original,one generated model,other generated model')
ylabel('feature values')
title('decay_time_constant_after_stim')




