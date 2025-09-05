%% Clase 3

clear; % Limpia memoria

close all; % cierra ventanaas

% ST = Tendencia + ciclos + error

% Define the components of the model

trend = 1:100; % trend component
error1 = randn(1,100);
error2 = 1 + 2*randn(1,100);

% cycles = sin(linspace(0, 2*pi, 10)); % Example cyclic component
% error = randn(1, 10); % Example error component

figure
plot(trend, error1, "blue", "LineWidth" , 2);
line(trend, error2);
title("Gráfico error", "FontSize", 30);
xlabel("Tiempo", "FontSize", 25);
ylabel("Variable", "FontSize", 25);
set(gca, 'FontWeight', "bold");



%% cálculo de estadísticos

figure
plot_guardado = plot(trend, error1, "blue", "LineWidth" , 3);

mean(error1);

figure
subplot(2,1,1)
plot(trend, error1, "blue", "LineWidth" , 2);
subplot(2,1,2)
plot(trend, error2, "red", "LineWidth" , 2);


mean(error1);
mean(error2);
std(error1);
std(error2);
std(error1)^2;

figure
subplot(1,2,1);
histogram(error1);
subplot(1,2,2);
histogram(error2);



figure
plot(trend, error1, "red", "LineWidth" , 2, "LineStyle", "--");
hold on;
plot(trend, error2,"green");
legend('Error 1',"Error 2")


%% Tendencia


tendencia = 10 + 0.1*trend;

serie_tiempo = error2 + tendencia;

figure
subplot(2,2,1)
plot(trend, error2);
title("Error");
subplot(2,2,2)
plot(trend, tendencia);
title("Tendencia");
subplot(2,2,3)
plot(trend, serie_tiempo);
title("Serie de Tiempo")

