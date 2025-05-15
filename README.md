# Introdução à Regressão na Análise de Variância
Curso: Estatística Aplicada à Zootecnia
Objetivo: Compreender a aplicação da regressão linear simples para análise de relações quantitativas em experimentos zootécnicos.
Duração: 2h (1h30 aula expositiva + 30min exercício final)

1. Relações entre Variáveis Quantitativas

Na Zootecnia, é comum estudar como variáveis quantitativas se relacionam. Esses estudos são fundamentais para:

- Identificar fatores que afetam o desempenho animal;
- Realizar modelagem de resposta;
- Ajustar recomendações técnicas de nutrição, ambiência, manejo, etc.

Exemplos práticos:
- Consumo de ração (X) vs. ganho de peso diário ($Y$)
- Nível de proteína na dieta ($X$) vs. produção de leite ($Y$)
- Densidade de lotação ($X$) vs. conversão alimentar ($Y$)

Objetivos da análise relacional:
- Descrever: como uma variável varia com a outra.
- Associar: verificar a força da relação.
- Predizer: estimar valores de uma variável a partir da outra.

2. Correlação

A correlação mede a força e a direção da relação linear entre duas variáveis quantitativas.

-	Coeficiente de correlação de Pearson (r):
-	$r = \frac{\sum (x_i - \bar{x})(y_i - \bar{y})}{\sqrt{\sum (x_i - \bar{x})^2 \sum (y_i - \bar{y})^2}}$

Interpretação:

| Valor de r    | Interpretação                   |
|---------------|---------------------------------|
| Próximo de +1 | Correlação forte positiva       |
| Próximo de -1 | Correlação forte negativa       |
| Próximo de 0  | Correlação fraca ou inexistente |

⚠️ Importante: correlação não implica causalidade.

Ou ainda:

| Valor de r        | Interpretação           |
|-------------------|-------------------------|
| 0.8 ≤ \|r\| ≤ 1.0 | Correlação forte        |
| 0.5 ≤ \|r\| ≤ 0.8 | Correlação moderada     |
| 0.3 ≤ \|r\| ≤ 0.5 | Correlação fraca        |
| 0.0 ≤ \|r\| ≤ 0.3 | Correlação desprezível  |

3. Regressão Linear Simples

A regressão estuda a relação funcional entre uma variável dependente $Y$ e uma independente $X$:

$Y = \beta_0 + \beta_1 X + \varepsilon$

Onde:
  - $\beta_0$: intercepto (valor de $Y$ quando $X$ = $0$)
  - $\beta_1$: coeficiente angular (mudança esperada em $Y$ a cada unidade de $X$)
  - $\varepsilon$: erro aleatório

Objetivo: encontrar os valores estimados de $\beta_0$ e $\beta_1$ que melhor ajustam os dados.

4. Estimativa dos Parâmetros (Mínimos Quadrados)

Método dos Mínimos Quadrados (MMQ)

Minimiza a soma dos quadrados dos resíduos (erros) entre os valores observados e os estimados.

Fórmulas:

$$\beta_1 = \frac{\sum (x_i - \bar{x})(y_i - \bar{y})}{\sum (x_i - \bar{x})^2}$$

$$\beta_0 = \bar{y} - \beta_1 \bar{x}$$

Etapas:
Calcular as médias 

​
 

Montar a tabela com:


Aplicar as fórmulas



5. 
