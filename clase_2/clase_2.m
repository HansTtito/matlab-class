%% Conociendo un poco de vectores

columnas = [3 9 10]; % Columnas
filas = [3; 4; 5]; % Filas ??? 

diff_rest = 130 - 10; % te devuelve la diferencia

rest_di = [1 -10]; % Te devuelve un vector con dos elementos 

%% Generenado secuencias

vector_dos_puntos = 1:10;

vector_creciente = 1:0.5:10;

vector_decreciente = 10:-1:1;

vector_decreciente(2); % Indexando el segundo valor

vector_decreciente(1); % No acepta negativos, ni fuera de los rangos

vector_decreciente(10:-1:2); % se puede jugar con los vectores

vector_decreciente([4 6]); % valores específicos

% el separados es por comas (filas, columnas)
filas(1:2,1)

%% Matrices

matriz_pruebas = [1 2 3; 4 5 6];

size(matriz_pruebas); % Obtiene dimensiones de matriz

filas_columnas_matriz = size(matriz_pruebas);

whos; % Muestra todos los objetos guardados en la memoria

matriz_pruebas' % apóstrofe es la transpuesta

matriz_cuadrada = [1 4 5; 34 12 1; 120 12 1];

matriz_cuadrada(2, 2) % Indexar por filas y columnas

matriz_cuadrada(:, 3) % Indexar por filas y columnas 

matriz_cuadrada(2:3,2) % Podemos jugar con los dos puntos y demás!! 

matriz_cuadrada(2) % ten cuidado que esto te extrae la segunda fila de la primera columna



%% Comándos útiles


help sin;

help pi;

help plot;

%% probando

% Parámetros
N = 100;                         % Número de muestras
t = (1:N)';                      % Vector de tiempo (columna)
windowSize = 50;                 % Tamaño de ventana para media móvil

% Ruido blanco y su media móvil
ruidoBlanco = randn(N, 1);
mediaMovil  = movmean(ruidoBlanco, windowSize);

% Tendencia (columna)
tendencia = 0.05 * t;

% Componente cíclico: banco de 10 senos y luego suma en una sola señal
ciclos = 1000;
C = sin(2*pi * t * ((1:ciclos)/ciclos));  % N×ciclos
ciclo = sum(C, 2);                        % N×1 (suma por columnas)

% Serie final (una sola columna)
serieTiempo = tendencia + ciclo + mediaMovil;

% Graficar
figure;
subplot(3,1,1)
plot(serieTiempo, 'LineWidth', 1);
title('Serie de Tiempo (tendencia + ciclos + ruido suavizado)');
xlabel('Muestras'); ylabel('Valor'); grid on;

subplot(3,1,2)
plot(tendencia, 'LineWidth', 1);
title('Tendencia'); xlabel('Muestras'); ylabel('Valor'); grid on;

subplot(3,1,3)
plot(ciclo, 'LineWidth', 1);
title(['Ciclo (suma de ' num2str(ciclos) ' senos)']); xlabel('Muestras'); ylabel('Valor'); grid on;




