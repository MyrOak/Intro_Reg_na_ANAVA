# Introdução à Regressão na Análise de Variância
Curso: Estatística Aplicada à Zootecnia
Objetivo: Compreender a aplicação da regressão linear simples para análise de relações quantitativas em experimentos zootécnicos.
Duração: 2h (1h30 aula expositiva + 30min exercício final)

Para assessar o slide clique [aqui](https://view.genially.com/6825c4b204ad060b7f4d64ec/interactive-content-regressao-na-analise-de-variancia)!

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
$$r = \frac{\sum (x_i - \bar{x})(y_i - \bar{y})}{\sqrt{\sum (x_i - \bar{x})^2 \sum (y_i - \bar{y})^2}}$$

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
Calcular as médias $(\bar{x})$ e $(\bar{y})$. 

Montar a tabela com: $x$, $y$, $x^2$, $y^2$, $x \cdot y$

Aplicar as fórmulas.

- Vamos fazer juntos!

Dados:

| X (Ração kg/dia) | Y (Ganho kg/dia) |
|------------------|------------------|
| 5.0              | 0.8              |
| 6.0              | 1.0              |
| 7.0              | 1.2              |
| 8.0              | 1.4              |
| 9.0              | 1.6              |

5. Exemplo com Calculadora Científica

- Passo a passo (Casio fx-82MS, fx-991, etc.):
  1. Pressione MODE → 2 (STAT)
  2. Escolha 2 (Regressão $A+BX$)
  3. Inserir pares $(X, Y)$: ex: $5$ , $0.8$ M+
  4. SHIFT $+$ $1$ → 5 (Reg) → $1$ ($\beta_0$), $2$ ($\beta_1$), $3$ (r)
 
ou veja este [tutorial](https://sites.google.com/site/andrehgomes/material-didatico/fisica-experimental/regressao-linear-usando-uma-casio)

Resultados esperados:
- $\beta_0$ = -0.2
- $\beta_1$ = 0.2
- r = 1.0

Equação: $Y = -0.2 + 0.2X$

- Interpretação do Modelo
  - $\beta_1$ $=$ $0.2$: cada kg adicional de ração resulta, em média, em $0.2$ kg de ganho de peso.
  - $\beta_0$ $=$ $-0.2$: valor estimado do ganho quando a ração é zero (pouca utilidade biológica).
  - Predição: para $X = 10$ → $Y = -0.2 + 0.2 × 10 = $1.8$kg.

6. Exercício Final

Dados:

| Ração (g) | Produção (L/dia) |
|-----------|------------------|
| 50        | 1.2              |
| 75        | 1.7              |
| 100       | 2.0              |
| 125       | 2.1              |
| 150       | 2.5              |

Tarefas:
1. Calcular médias de $X$ e $Y$.
2. Estimar os coeficientes $\beta_0$ e $\beta_1$.
3. Escrever a equação da reta.
4. Interpretar os coeficientes.
5. Estimar produção para $135$ g de ração.
