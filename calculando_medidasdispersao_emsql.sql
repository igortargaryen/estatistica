/* 
CALCULANDO A VARIÂNCIA
- Ela reflete a dispersão ou a variabilidade dos dados.
- Quanto maior a variância, mais dispersos estão os dados.
*/
SELECT ROUND(VARIANCE(total_domicilios), 2) AS variancia_domicilios
FROM vw_domicilios_quantidade_domicilios_consolidado;

SELECT ROUND(VAR_SAMP(total_domicilios), 2) AS var_amostral_domicilios -- Variância Amostral
FROM vw_domicilios_quantidade_domicilios_consolidado;

/*
DESVIO PADRÃO
- indica o grau de dispersão ou variabilidade de um conjunto de dados em relação à média.
- é a raiz quadrada da variância;
- Quanto menor o desvio padrão, mais concentrados estão os dados; quanto maior, mais espalhados eles estão.
*/
SELECT ROUND(STDDEV(total_domicilios), 2) AS desviop_domicilios
FROM vw_domicilios_quantidade_domicilios_consolidado;

SELECT ROUND(SQRT(VARIANCE(total_domicilios)), 2) AS raizqua_var_domicilios 
FROM vw_domicilios_quantidade_domicilios_consolidado; -- Calculando a Raiz Quadrada da Variância

/*
AMPLITUDE
- representa a diferença entre o maior e o menor valor de um conjunto de dados.
- indica o intervalo total de variação dos dados.
- Ela é útil para obter uma ideia rápida da dispersão dos dados,
embora não leve em consideração valores intermediários ou a distribuição geral.
*/
SELECT ROUND(MAX(total_domicilios) - MIN(total_domicilios),2) AS amplitude_domicilios
FROM vw_domicilios_quantidade_domicilios_consolidado; 

/*
COEFICIENTE DE VARIAÇÃO
- indica a dispersão relativa de um conjunto de dados em relação à média.
- métrica é útil para comparar a variabilidade entre diferentes conjuntos de dados
*/
SELECT ROUND((STDDEV(total_domicilios)/AVG(total_domicilios))*100,2) AS coe_var_domicilios
FROM vw_domicilios_quantidade_domicilios_consolidado; 
