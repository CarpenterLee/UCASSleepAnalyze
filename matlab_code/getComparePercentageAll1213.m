clear; 
percentages_female = [0;
0.004950;0.019801;0.024752;0.029702;
0.029702;0.029702;0.029702;0.039603;
0.039603;0.044554;0.044554;0.049504;
0.054455;0.059405;0.059405;0.059405;
0.059405;0.059405;0.069306;0.079207;
0.079207;0.089108;0.089108;0.089108;
0.094059;0.099009;0.108910;0.108910;
0.108910;0.113861;0.138613;0.163366;
0.178217;0.193069;0.227722;0.257425;
0.292079;0.316831;0.346534;0.361386;
0.405940;0.465346;0.504950;0.534653;
0.574257;0.618811;0.653465;0.698019;
0.722772;0.782178;0.801980;0.826732;
0.861386;0.891089;0.910891;0.920792;
0.925742;0.925742;0.925742;0.925742;
0.935643;0.945544;0.945544;0.955445;
0.955445;0.965346;0.965346;0.970297;
0.970297;0.970297;0.970297;0.970297];
percentages_male = [0;
0.004608;0.009216;0.013824;0.018433;
0.018433;0.027649;0.027649;0.027649;
0.027649;0.027649;0.036866;0.046082;
0.046082;0.055299;0.059907;0.069124;
0.073732;0.078341;0.078341;0.082949;
0.092165;0.092165;0.110599;0.115207;
0.115207;0.129032;0.152073;0.161290;
0.161290;0.165898;0.175115;0.184331;
0.193548;0.207373;0.216589;0.225806;
0.235023;0.248847;0.285714;0.322580;
0.341013;0.368663;0.405529;0.433179;
0.470046;0.502304;0.539170;0.576036;
0.599078;0.612903;0.654377;0.700460;
0.732718;0.755760;0.764976;0.774193;
0.801843;0.843317;0.866359;0.875576;
0.880184;0.889400;0.894009;0.917050;
0.921658;0.930875;0.935483;0.940092;
0.944700;0.949308;0.958525;0.958525];
names = {
'20151012_200037'; '20151012_200538'; '20151012_201039'; '20151012_201541';
'20151012_202042'; '20151012_202544'; '20151012_203045'; '20151012_203546';
'20151012_204047'; '20151012_204549'; '20151012_205050'; '20151012_205552';
'20151012_210053'; '20151012_210555'; '20151012_211056'; '20151012_211557';
'20151012_212058'; '20151012_212559'; '20151012_213101'; '20151012_213602';
'20151012_214103'; '20151012_214605'; '20151012_215106'; '20151012_215607';
'20151012_220109'; '20151012_220610'; '20151012_221111'; '20151012_221613';
'20151012_222114'; '20151012_222615'; '20151012_223117'; '20151012_223618';
'20151012_224119'; '20151012_224621'; '20151012_225122'; '20151012_225623';
'20151012_230124'; '20151012_230626'; '20151012_231127'; '20151012_231629';
'20151012_232130'; '20151012_232631'; '20151012_233132'; '20151012_233634';
'20151012_234135'; '20151012_234636'; '20151012_235137'; '20151012_235639';
'20151013_000140'; '20151013_000642'; '20151013_001143'; '20151013_001644';
'20151013_002145'; '20151013_002647'; '20151013_003148'; '20151013_003649';
'20151013_004151'; '20151013_004652'; '20151013_005153'; '20151013_005655';
'20151013_010156'; '20151013_010657'; '20151013_011159'; '20151013_011700';
'20151013_012201'; '20151013_012702'; '20151013_013204'; '20151013_013705';
'20151013_014206'; '20151013_014708'; '20151013_015209'; '20151013_015710';
'20151013_020211'; 
};
frames_count=1;
f_size_sub = 12;
f_size_title = 12;
plot_tile = '国科大青年公寓学生入睡时间分布图';
subplot('position',[0.05,0.1,0.15,0.9]);
img = imread('E:\sleepAnalyze\autoCamera20151012_13\backup\20151013_062823.jpg');
img = img(330:750,10:1024,:);
img = imrotate(img, -90);
imshow(img);
xlabel('女生公寓', 'fontsize',f_size_sub);
subplot('position',[0.21,0.1,0.15,0.9]);
templet = imread('E:\sleepAnalyze\autoCamera20151012_13\female\templet87_wb.png');
imshow(templet);
xlabel('全部亮点202', 'fontsize',f_size_sub);
set(gcf,'color','white'); 
time_x = 1:1;
subplot('position',[0.4,0.25,0.55,0.6]);
per_p = plot(time_x, percentages_female(1:1), 'r', time_x, percentages_male(1:1), 'b');
text(60, -0.25, '@计算所的小鼠标', 'fontsize', 8);
set(gca,'FontSize',8);
legend('女生','男生', 'Location', 'NorthWest')
grid on;
set(per_p,'LineWidth',2);
set(gca,'XTick',1:12:73);
set(gca,'XTickLabel',{'20:00','21:00','22:00','23:00','00:00','01:00','02:00'})
set(gca,'YTick',0:0.2:1);
set(gca,'YTickLabel',{'0%','20%','40%','60%','80%','100%'})
title(plot_tile, 'fontsize',f_size_title);
xlim([1 73]);
ylim([0 1]);
xlabel('时间', 'fontsize',f_size_title);
set(gcf,'position',[100,100, 850, 400]);
set(gcf, 'color', [0.94, 0.94, 0.94]);
A=getframe(gcf);
gif_frames(frames_count)=A;
frames_count=frames_count+1;
imwrite(A.cdata, 'E:\sleepAnalyze\autoCamera20151012_13\female\compare_percentage_day_all.png');
% return;

data_path = 'E:/sleepAnalyze/autoCamera20151012_13/data_img/';
save_path = 'E:\sleepAnalyze\autoCamera20151012_13\female\compare_percantage_all\';
for i=1:1:73 
% for i=1:1:10
% for i=49:49
% for i=73:73 
% for i=31:31
   in_name = sprintf('%s%s.jpg', data_path, char(names(i)));
   sprintf('%s %0.2f%%', in_name, percentages_female(i)*100)
   [regions, img, wb] = getRegions4Female12_13(9, 23, 0.25, in_name);
   s = size(regions);
   name_save = sprintf('%s%s.png', save_path, char(names(i)));
   wb = rot90(rot90(rot90(wb)));
   img = imrotate(img, -90);
   figure;
   subplot('position',[0.05,0.1,0.15,0.9]);
   imshow(img);
   time_str = char(names(i));
   time_str = sprintf('%s:%s', time_str(10:11), time_str(12:13));
   xlabel(time_str, 'fontsize',f_size_sub);
   label2 = sprintf('亮灯数%3d', s(1));
   subplot('position',[0.21,0.1,0.15,0.9]);
   imshow(wb);
   xlabel(label2, 'fontsize',f_size_sub);
   set(gcf,'color','white'); 
   time_x = 1:i;
   subplot('position',[0.4,0.25,0.55,0.6]);
   per_p = plot(time_x, percentages_female(1:i), 'r', time_x, percentages_male(1:i), 'b');
   text(60, -0.25, '@计算所的小鼠标', 'fontsize', 8);
   set(gca,'FontSize',8);
   legend('女生','男生', 'Location', 'NorthWest')
%    legend('boxoff');
   grid on;
   set(per_p, 'LineWidth',2)
   set(gca,'XTick',1:12:73);
   set(gca,'XTickLabel',{'20:00','21:00','22:00','23:00','00:00','01:00','02:00'})
   set(gca,'YTick',0:0.2:1);
   set(gca,'YTickLabel',{'0%','20%','40%','60%','80%','100%'})
   title(plot_tile, 'fontsize',f_size_sub);
   xlim([1 73]);
   ylim([0 1]);
   p_f = percentages_female(i);
   text(i-7, p_f+0.05, sprintf('%.2f%%', p_f*100), 'BackgroundColor',[1 .6 .78]);
   p_m = percentages_male(i);
   text(i, p_m-0.06, sprintf('%.2f%%', p_m*100), 'BackgroundColor',[.7 .78 1]);
%    time_str = sprintf('时间%s', time_str);
   xlabel(time_str, 'fontsize',f_size_title);
   set(gcf,'position',[100,100, 850, 400]);
   set(gcf, 'color', [0.94, 0.94, 0.94]);
   A=getframe(gcf);
   gif_frames(frames_count)=A;
   frames_count=frames_count+1;
   imwrite(A.cdata, name_save);
   close all;
%    clear;
end
writegif('E:\sleepAnalyze\autoCamera20151012_13\推广\男女生对比动图.gif',gif_frames,0.25);
