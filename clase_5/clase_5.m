% enso = load("datos\data_nino.txt");
enso = readtable("datos\data_nino.txt");

disp(enso);

% Convertir la tabla a un timetable si no lo es
enso.Fecha = datetime(enso.x_YR, enso.MON, 1); % Asumiendo que 'x_YR' es el año y 'MON' es el mes

% promediosMensuales = groupsummary(enso, 'Fecha', 'month', 'mean', {'NINO1_2', 'NINO3', 'NINO4', 'NINO3_4'});

disp(enso)
