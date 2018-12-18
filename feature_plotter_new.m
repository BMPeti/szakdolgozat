clear all
close all

%%% Edit paths! %%%

alldatain = importdata('C:\Users\Peti\Desktop\onlab_legujabb\Matlabdata_03_28_bovitett.xlsx');

%disp(alldatain.data);

features=alldatain.textdata(1,4:end);
alldata=alldatain.data(:,3:end);
%disp(alldata);
featurecount = length(features);
numbering = 1:size(alldata, 1);


picsavefolder = ('C:\Users\Peti\Desktop\onlab_legujabb\HBP_pics_egysejt\features_newest_unlabeled');
if ~exist(picsavefolder,'dir') 
    mkdir(picsavefolder); 
end

adatszoras = nanstd(alldata(1:128,:));
csoportszoras_cck = nanstd(alldata(1:49,:));
csoportszoras_pv = nanstd(alldata(50:71,:));
csoportszoras_principal = nanstd(alldata(72:128,:));

sejtsorszam = alldatain.data(:,1);
%sejtcount = length(sejtsorszam);

  %for i = 1:max(sejtsorszam)
    
        %sejtszoras = nanstd(alldata(sejtsorszam,:));
    %end


%%%%%%%%%%%%%%%
% Plotting
%%%%%%%%%%%%%

for idx = 1:featurecount
    
  
    
    figure
    hold on
    
   
    
    plot(3.10,alldata(6:10,idx),'.', 'MarkerSize',10, 'Color',[0 1 0])
    plot(3.15,alldata(11:15,idx),'.', 'MarkerSize',10, 'Color',[.5 .5 0])
    plot(3.17,alldata(11,idx),'.', 'MarkerSize',10, 'Color',[.5 .5 0])
    plot(3.20,alldata(16:21,idx),'.', 'MarkerSize',10, 'Color',[1 1 0])
    plot(3.25,alldata(22:23,idx),'.', 'MarkerSize',10, 'Color',[1 0 1])
    plot(3.30,alldata(24:25,idx),'.', 'MarkerSize',10, 'Color',[0 1 1])
    plot(3.35,alldata(26:27,idx),'.', 'MarkerSize',10, 'Color',[.5 0 0])
    plot(3.50,alldata(29:32,idx),'.', 'MarkerSize',10, 'Color',[0 .5 0])
    plot(3.55,alldata(33:35,idx),'.', 'MarkerSize',10, 'Color',[0 0 .5])
    plot(3.60,alldata(36:39,idx),'.', 'MarkerSize',10, 'Color',[0 0 1])
    plot(3.65,alldata(40:43,idx),'.', 'MarkerSize',10, 'Color',[.5 0 .5])
    plot(3.70,alldata(44:45,idx),'.', 'MarkerSize',10, 'Color',[0 .5 .5])
    plot(3.75,alldata(46,idx),'.', 'MarkerSize',10, 'Color',[.7 0 0])
    plot(3.75,alldata(47,idx),'.', 'MarkerSize',10, 'Color',[.7 0 0])
    plot(3.80,alldata(48:49,idx),'.', 'MarkerSize',10, 'Color',[.25 .25 0])
    
       
    plot(4.05,alldata(50:51,idx),'.', 'MarkerSize',10, 'Color',[1 0 0])
    plot(4.10,alldata(52:55,idx),'.', 'MarkerSize',10, 'Color',[0 1 0])
    plot(4.15,alldata(56:58,idx),'.', 'MarkerSize',10, 'Color',[0 0 1])
    plot(4.15,alldata(56,idx),'.', 'MarkerSize',10, 'Color',[0 0 1])
    plot(4.20,alldata(59:62,idx),'.', 'MarkerSize',10, 'Color',[0 1 1])
    plot(4.25,alldata(63:66,idx),'.', 'MarkerSize',10, 'Color',[1 1 0])
    plot(4.30,alldata(67:70,idx),'.', 'MarkerSize',10, 'Color',[1 0 1])
    
  
    
    plot(4.90,alldata(75:78,idx),'.', 'MarkerSize',10, 'Color',[.8 .3 0])
    plot(4.95,alldata(79:80,idx),'.', 'MarkerSize',10, 'Color',[0 .8 .3])
    plot(5,alldata(81:83,idx),'.', 'MarkerSize',10, 'Color',[0 .8 .3])
    plot(5.05,alldata(84:86,idx),'.', 'MarkerSize',10, 'Color',[1 0 0])
    plot(5.10,alldata(87:90,idx),'.', 'MarkerSize',10, 'Color',[0 1 0])
    plot(5.15,alldata(91:92,idx),'.', 'MarkerSize',10, 'Color',[.5 .5 0])
    plot(5.20,alldata(93:96,idx),'.', 'MarkerSize',10, 'Color',[1 1 0])
    plot(5.25,alldata(97:101,idx),'.', 'MarkerSize',10, 'Color',[1 0 1])
    plot(5.30,alldata(102:104,idx),'.', 'MarkerSize',10, 'Color',[0 1 1])
    plot(5.35,alldata(105:107,idx),'.', 'MarkerSize',10, 'Color',[.5 0 0])
    plot(5.40,alldata(108:109,idx),'.', 'MarkerSize',10, 'Color',[.5 .2 0])
    plot(5.50,alldata(110:112,idx),'.', 'MarkerSize',10, 'Color',[0 .5 0])
    plot(5.55,alldata(113:116,idx),'.', 'MarkerSize',10, 'Color',[0 0 .5])
    plot(5.60,alldata(117:120,idx),'.', 'MarkerSize',10, 'Color',[0 0 1])
    plot(5.65,alldata(121:123,idx),'.', 'MarkerSize',10, 'Color',[.5 0 .5])
    plot(5.70,alldata(126:128,idx),'.', 'MarkerSize',10, 'Color',[.25 .25 0])
    
    
    xlim([3 6])
    ylim('auto')
    xlabel('Cells: CCK,PV,Principal')
    ylabel('Feature value')
    title(features{idx})
    saveas(gcf,[picsavefolder,'\',features{idx},'.png']);
    hold off
    %waitforbuttonpress;
end

