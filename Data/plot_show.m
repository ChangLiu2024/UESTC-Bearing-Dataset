clc; clear; 
% rng(123);
struct_data = load("O_800\O_800_1.mat");
data = getfield(struct_data, "Data");
disp(length(data));

%% figure1, plot the raw signal
% plot(data);
% axis tight;

%% figure 2, plot the segmented signal and the hilbert signal
L = 1024*2;
s = randi([1,200000]);
sample = data(s:s+L-1);
plot(sample);
axis tight;
hold on;
s_hilbert = abs(hilbert(sample));
% h1 = plot(s_hilbert);

%% plot the de-sampling hilbert signal
new_sample = de_sample_mean_filt(s_hilbert, 20);
% figure;
h2 = plot(new_sample, LineWidth=2);
axis tight;
hold off;

%% 平均滤波并降采样
function arr_y = de_sample(arr_x, rate)
    L = length(arr_x);
    for i = 1:L
        if mod(i, rate) == 0
            arr_y(i/rate) = mean(arr_x(i-rate+1:i));
        end
    end
end

%% 平均滤波不降采样
function arr_y = de_sample_mean_filt(arr_x, rate)
    L = length(arr_x);
    for i = 1:L
        if i+rate-1 <= L
            arr_y(i) = mean(arr_x(i:i+rate-1));
        else
            arr_y(i) = mean(arr_x(i:L));
        end
    end
end
