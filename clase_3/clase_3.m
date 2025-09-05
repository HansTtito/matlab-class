% Clase 3

clear; % Limpia memoria

close all; % cierra ventanaas

% ST = Tendencia + ciclos + error

% Define the components of the model

trend = 1:10; % trend component
cycles = sin(linspace(0, 2*pi, 10)); % Example cyclic component
error = randn(1, 10); % Example error component

