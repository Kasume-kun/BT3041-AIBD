clear variables;
close all;
clc;
data = readtable('Data_for_assignment1.csv');
deciduous_Chlorophyll_a = table2array(data(1:50,"Chlorophyll_a"));
deciduous_Chlorophyll_b = table2array(data(1:50,"Chlorophyll_b"));
evergreen_Chlorophyll_a = table2array(data(51:100,"Chlorophyll_a"));
evergreen_Chlorophyll_b = table2array(data(51:100,"Chlorophyll_b"));
Chlorophyll_a = table2array(data(1:100,"Chlorophyll_a"));
Chlorophyll_b = table2array(data(1:100,"Chlorophyll_b"));

%-----Question 1-----%
figure(1)
histogram(deciduous_Chlorophyll_a,'BinWidth',1)
hold on
histogram(deciduous_Chlorophyll_b,'BinWidth',1)
legend({'Chlorophyll a','Chlorophyll b'},'Location','northeast')
title('Distribution of chlorophyll a and b in deciduous forests') 
xlabel('Chlorophyll levels')
ylabel('No of trees')

%-----Question 2-----%
figure(2)
histogram(evergreen_Chlorophyll_a,'BinWidth',1)
hold on
histogram(evergreen_Chlorophyll_b,'BinWidth',1)
legend({'Chlorophyll a','Chlorophyll b'},'Location','northeast')
title('Distribution of chlorophyll a and b in evergreen forests') 
xlabel('Chlorophyll levels')
ylabel('No of trees')

%-----Question 3-----%
figure(3)
histogram(table2array(data(1:100,"Chlorophyll_a")),'BinWidth',0.5)
hold on
histogram(table2array(data(1:100,"Chlorophyll_b")),'BinWidth',0.5)
legend({'Chlorophyll a','Chlorophyll b'},'Location','northeast')
title('Distribution of chlorophyll a and b (Deciduous + Evergreen)') 
xlabel('Chlorophyll levels')
ylabel('No of trees')

%-----Question 4-----%
figure(4)
histogram(deciduous_Chlorophyll_a,'BinWidth',1)
hold on
histogram(evergreen_Chlorophyll_a,'BinWidth',1)
hold on
histogram(Chlorophyll_a,'BinWidth',1)
hold on
legend({'Deciduous','Evergreen','Deciduous+Evergreen'},'Location','northeast')
title('Distribution of chlorophyll a') 
xlabel('Chlorophyll levels')
ylabel('No of trees')

figure(5)
histogram(deciduous_Chlorophyll_b,'BinWidth',0.5)
hold on
histogram(evergreen_Chlorophyll_b,'BinWidth',0.5)
hold on
histogram(Chlorophyll_b,'BinWidth',0.5)
legend({'Deciduous','Evergreen','Deciduous+Evergreen'},'Location','northeast')
title('Distribution of chlorophyll b') 
xlabel('Chlorophyll levels')
ylabel('No of trees')

%-----Question 5-----%
mean_deci_chloro_a = mean(deciduous_Chlorophyll_a,1,"omitmissing");
mean_deci_chloro_b = mean(deciduous_Chlorophyll_b,1,"omitmissing");
mean_evergreen_chloro_a = mean(evergreen_Chlorophyll_a,1,"omitmissing");
mean_evergreen_chloro_b = mean(evergreen_Chlorophyll_b,1,"omitmissing");
mean_chloro_a = mean(Chlorophyll_a,1,"omitmissing");
mean_chloro_b = mean(Chlorophyll_b,1,"omitmissing");
disp('Mean of chlorophyll a levels in deciduous forest samples: ')
disp(mean_deci_chloro_a)
disp('Mean of chlorophyll b levels in deciduous forest samples: ')
disp(mean_deci_chloro_b)
disp('Mean of chlorophyll a levels in evergreen forest samples: ')
disp(mean_evergreen_chloro_a)
disp('Mean of chlorophyll a levels in evergreen forest samples: ')
disp(mean_evergreen_chloro_b)
disp('Mean of chlorophyll a levels in the entire sample: ')
disp(mean_chloro_a)
disp('Mean of chlorophyll b levels in the entire sample: ')
disp(mean_chloro_b)

median_deci_chloro_a = median(deciduous_Chlorophyll_a,1,"omitmissing");
median_deci_chloro_b = median(deciduous_Chlorophyll_b,1,"omitmissing");
median_evergreen_chloro_a = median(evergreen_Chlorophyll_a,1,"omitmissing");
median_evergreen_chloro_b = median(evergreen_Chlorophyll_b,1,"omitmissing");
median_chloro_a = median(Chlorophyll_a,1,"omitmissing");
median_chloro_b = median(Chlorophyll_b,1,"omitmissing");
disp('Median of chlorophyll a levels in deciduous forest samples: ')
disp(median_deci_chloro_a)
disp('Median of chlorophyll b levels in deciduous forest samples: ')
disp(median_deci_chloro_b)
disp('Median of chlorophyll a levels in evergreen forest samples: ')
disp(median_evergreen_chloro_a)
disp('Median of chlorophyll a levels in evergreen forest samples: ')
disp(median_evergreen_chloro_b)
disp('Median of chlorophyll a levels in the entire sample: ')
disp(median_chloro_a)
disp('Median of chlorophyll b levels in the entire sample: ')
disp(median_chloro_b)

mode_deci_chloro_a = mode(deciduous_Chlorophyll_a,1);
mode_deci_chloro_b = mode(deciduous_Chlorophyll_b,1);
mode_evergreen_chloro_a = mode(evergreen_Chlorophyll_a,1);
mode_evergreen_chloro_b = mode(evergreen_Chlorophyll_b,1);
mode_chloro_a = mode(Chlorophyll_a,1);
mode_chloro_b = mode(Chlorophyll_b,1);
disp('Mode of chlorophyll a levels in deciduous forest samples: ')
disp(mode_deci_chloro_a)
disp('Mode of chlorophyll b levels in deciduous forest samples: ')
disp(mode_deci_chloro_b)
disp('Mode of chlorophyll a levels in evergreen forest samples: ')
disp(mode_evergreen_chloro_a)
disp('Mode of chlorophyll a levels in evergreen forest samples: ')
disp(mode_evergreen_chloro_b)
disp('Mode of chlorophyll a levels in the entire sample: ')
disp(mode_chloro_a)
disp('Mode of chlorophyll b levels in the entire sample: ')
disp(mode_chloro_b)

std_deci_chloro_a = std(deciduous_Chlorophyll_a,1,"omitmissing");
std_deci_chloro_b = std(deciduous_Chlorophyll_b,1,"omitmissing");
std_evergreen_chloro_a = std(evergreen_Chlorophyll_a,1,"omitmissing");
std_evergreen_chloro_b = std(evergreen_Chlorophyll_b,1,"omitmissing");
std_chloro_a = std(Chlorophyll_a,1,"omitmissing");
std_chloro_b = std(Chlorophyll_b,1,"omitmissing");
disp('Standard deviation of chlorophyll a levels in deciduous forest samples: ')
disp(std_deci_chloro_a)
disp('Standard deviation of chlorophyll b levels in deciduous forest samples: ')
disp(std_deci_chloro_b)
disp('Standard deviation of chlorophyll a levels in evergreen forest samples: ')
disp(std_evergreen_chloro_a)
disp('Standard deviation of chlorophyll a levels in evergreen forest samples: ')
disp(std_evergreen_chloro_b)
disp('Standard deviation of chlorophyll a levels in the entire sample: ')
disp(std_chloro_a)
disp('Standard deviation of chlorophyll b levels in the entire sample: ')
disp(std_chloro_b)

var_deci_chloro_a = var(deciduous_Chlorophyll_a,1,"omitmissing");
var_deci_chloro_b = var(deciduous_Chlorophyll_b,1,"omitmissing");
var_evergreen_chloro_a = var(evergreen_Chlorophyll_a,1,"omitmissing");
var_evergreen_chloro_b = var(evergreen_Chlorophyll_b,1,"omitmissing");
var_chloro_a = var(Chlorophyll_a,1,"omitmissing");
var_chloro_b = var(Chlorophyll_b,1,"omitmissing");

%-----Question 6-----%
data_box = [deciduous_Chlorophyll_a evergreen_Chlorophyll_a deciduous_Chlorophyll_b evergreen_Chlorophyll_b];
colors = [1 0.4117647058823529 0.3803921568627451; 0.7686274509803922 0.8705882352941177 0.6431372549019608];
figure(6)
hold on
boxplot(data_box,'Labels',{'Chlorophyll a','Chlorophyll a', 'Chlorophyll b','Chlorophyll b'},'Colors',colors)
h = findobj(gca,'Tag','Box');
for j=1:length(h)
    patch(get(h(j),'XData'),get(h(j),'YData'),get(h(j),'Color'),'FaceAlpha',.5);
end
legend({'Evergreen','Deciduous'},'Location','northeast')

%-----Question 7-----%
[h_ftest_deci, p_ftest_deci] = vartest2(deciduous_Chlorophyll_a,deciduous_Chlorophyll_b);
[h_ftest_evergreen, p_ftest_evergreen] = vartest2(evergreen_Chlorophyll_a,evergreen_Chlorophyll_b);
[h_ftest, p_ftest] = vartest2(Chlorophyll_a,Chlorophyll_b);
disp('Null Hypothesis = Variance of both the chlorophyll samples (a and b) for deciduous trees is equal')
disp('Alternate Hypothesis = Variance of both the chlorophyll samples (a and b) for deciduous trees is not equal')
disp(['h = ' sprintf('%d',h_ftest_deci)])
disp(['p = ' sprintf('%d',p_ftest_deci)])
disp(' ')

disp('Null Hypothesis = Variance of both the chlorophyll samples (a and b) for evergreen trees is equal')
disp('Alternate Hypothesis = Variance of both the chlorophyll samples (a and b) for evergreen trees is not equal')
disp(['h = ' sprintf('%d',h_ftest_evergreen)])
disp(['p = ' sprintf('%d',p_ftest_evergreen)])
disp(' ')

disp('Null Hypothesis = Variance of both the chlorophyll samples (a and b) is equal')
disp('Alternate Hypothesis = Variance of both the chlorophyll samples (a and b) is not equal')
disp(['h = ' sprintf('%d',h_ftest)])
disp(['p = ' sprintf('%d',p_ftest)])
disp(' ')

%-----Question 8-----%
[h_ttest_deci,p_ttest_deci] = ttest2(deciduous_Chlorophyll_a,deciduous_Chlorophyll_b,'Vartype','unequal','Tail','right');
[h_ttest_evergreen,p_ttest_evergreen] = ttest2(evergreen_Chlorophyll_a,evergreen_Chlorophyll_b,'Vartype','unequal','Tail','right');
[h_ttest,p_ttest] = ttest2(Chlorophyll_a,Chlorophyll_b,'Vartype','unequal','Tail','right');
disp('Null Hypothesis = Mean of chlorophyll a is greater than mean of chlorophyll b for deciduous forest samples')
disp('Alternate Hypothesis = Mean of chlorophyll a is not greater than mean of chlorophyll b for deciduous forest samples')
disp(['h = ' sprintf('%d',h_ttest_deci)])
disp(['p = ' sprintf('%d',p_ttest_deci)])
disp(' ')

disp('Null Hypothesis = Mean of chlorophyll a is greater than mean of chlorophyll b for evergreen forest samples')
disp('Alternate Hypothesis = Mean of chlorophyll a is not greater than mean of chlorophyll b for evergreen forest samples')
disp(['h = ' sprintf('%d',h_ttest_evergreen)])
disp(['p = ' sprintf('%d',p_ttest_evergreen)])
disp(' ')

disp('Null Hypothesis = Mean of chlorophyll a is greater than mean of chlorophyll b')
disp('Alternate Hypothesis = Mean of chlorophyll a is not greater than mean of chlorophyll b')
disp(['h = ' sprintf('%d',h_ttest)])
disp(['p = ' sprintf('%d',p_ttest)])
disp(' ')