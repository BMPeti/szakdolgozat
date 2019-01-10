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


picsavefolder = ('C:\Users\Peti\Desktop\onlab_legujabb\HBP_pics_egysejt\std_newest_unlabeled');
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
    
    plot(1,adatszoras(idx),'.', 'MarkerSize',10, 'Color','black')
    
    plot(2,csoportszoras_cck(idx),'.', 'MarkerSize',10, 'Color',[0 0 1])
    plot(2.1,csoportszoras_pv(idx),'.', 'MarkerSize',10, 'Color',[1 0 0])
    plot(2.2,csoportszoras_principal(idx),'.', 'MarkerSize',10, 'Color',[0 1 0])
    
 
    
    plot(3.10,nanstd(alldata(6:10,idx)),'.', 'MarkerSize',10, 'Color',[0 0 1])
    plot(3.15,nanstd(alldata(11:15,idx)),'.', 'MarkerSize',10, 'Color',[0 0 1])
    plot(3.20,nanstd(alldata(16:21,idx)),'.', 'MarkerSize',10, 'Color',[0 0 1])
    plot(3.25,nanstd(alldata(22:23,idx)),'.', 'MarkerSize',10, 'Color',[0 0 1])
    plot(3.30,nanstd(alldata(24:25,idx)),'.', 'MarkerSize',10, 'Color',[0 0 1])
    plot(3.35,nanstd(alldata(26:27,idx)),'.', 'MarkerSize',10, 'Color',[0 0 1])
    plot(3.50,nanstd(alldata(29:32,idx)),'.', 'MarkerSize',10, 'Color',[0 0 1])
    plot(3.55,nanstd(alldata(33:35,idx)),'.', 'MarkerSize',10, 'Color',[0 0 1])
    plot(3.60,nanstd(alldata(36:39,idx)),'.', 'MarkerSize',10, 'Color',[0 0 1])
    plot(3.65,nanstd(alldata(40:43,idx)),'.', 'MarkerSize',10, 'Color',[0 0 1])
    plot(3.70,nanstd(alldata(44:45,idx)),'.', 'MarkerSize',10, 'Color',[0 0 1])
    plot(3.75,nanstd(alldata(46:47,idx)),'.', 'MarkerSize',10, 'Color',[0 0 1])
    plot(3.80,nanstd(alldata(48:49,idx)),'.', 'MarkerSize',10, 'Color',[0 0 1])
    
       
    plot(4.05,nanstd(alldata(50:51,idx)),'.', 'MarkerSize',10, 'Color',[1 0 0])
    plot(4.10,nanstd(alldata(52:55,idx)),'.', 'MarkerSize',10, 'Color',[1 0 0])
    plot(4.15,nanstd(alldata(56:58,idx)),'.', 'MarkerSize',10, 'Color',[1 0 0])
    plot(4.20,nanstd(alldata(59:62,idx)),'.', 'MarkerSize',10, 'Color',[1 0 0])
    plot(4.25,nanstd(alldata(63:66,idx)),'.', 'MarkerSize',10, 'Color',[1 0 0])
    plot(4.30,nanstd(alldata(67:70,idx)),'.', 'MarkerSize',10, 'Color',[1 0 0])
    
  
    
    plot(4.95,nanstd(alldata(75:78,idx)),'.', 'MarkerSize',10, 'Color',[0 1 0])
    plot(4.95,nanstd(alldata(79:80,idx)),'.', 'MarkerSize',10, 'Color',[0 1 0])
    plot(5,nanstd(alldata(81:83,idx)),'.', 'MarkerSize',10, 'Color',[0 1 0])
    plot(5.05,nanstd(alldata(84:86,idx)),'.', 'MarkerSize',10, 'Color',[0 1 0])
    plot(5.10,nanstd(alldata(87:90,idx)),'.', 'MarkerSize',10, 'Color',[0 1 0])
    plot(5.15,nanstd(alldata(91:92,idx)),'.', 'MarkerSize',10, 'Color',[0 1 0])
    plot(5.20,nanstd(alldata(93:96,idx)),'.', 'MarkerSize',10, 'Color',[0 1 0])
    plot(5.25,nanstd(alldata(97:101,idx)),'.', 'MarkerSize',10, 'Color',[0 1 0])
    plot(5.30,nanstd(alldata(102:104,idx)),'.', 'MarkerSize',10, 'Color',[0 1 0])
    plot(5.35,nanstd(alldata(105:107,idx)),'.', 'MarkerSize',10, 'Color',[0 1 0])
    plot(5.40,nanstd(alldata(108:109,idx)),'.', 'MarkerSize',10, 'Color',[0 1 0])
    plot(5.50,nanstd(alldata(110:112,idx)),'.', 'MarkerSize',10, 'Color',[0 1 0])
    plot(5.55,nanstd(alldata(113:116,idx)),'.', 'MarkerSize',10, 'Color',[0 1 0])
    plot(5.60,nanstd(alldata(117:120,idx)),'.', 'MarkerSize',10, 'Color',[0 1 0])
    plot(5.65,nanstd(alldata(121:123,idx)),'.', 'MarkerSize',10, 'Color',[0 1 0])
    plot(5.70,nanstd(alldata(126:128,idx)),'.', 'MarkerSize',10, 'Color',[0 1 0])
    
    
    xlim([0 6])
    ylim('auto')
    xlabel('Std: whole data set, cell groups(CCK,PV,Principal),single cell(different measurements)')
    ylabel('Std value')
    title(features{idx})
    saveas(gcf,[picsavefolder,'\',features{idx},'.png']);
    hold off
    %waitforbuttonpress;
end

