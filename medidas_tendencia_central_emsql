# "Calculando a Média"
SELECT ROUND(AVG(salario), 2) AS media_salarial
FROM empregados;

# "Calculando a Mediana"
SELECT ROUND(MEDIAN(salario), 2) AS mediana_salarial
FROM empregados;

# "Calculando a Moda"
SELECT ROUND(salario, 2) AS moda_salarial
FROM (
    SELECT salario, COUNT(*) AS freq, 
           RANK() OVER (ORDER BY COUNT(*) DESC) AS rnk
    FROM empregados
    GROUP BY salario
)
WHERE rnk = 1;
