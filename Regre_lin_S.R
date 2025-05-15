# Carregar pacotes necessários
library(ggplot2)
library(gridExtra)

# 1. Correlação não linear (ex: parábola)
set.seed(1)
x1 <- seq(-2, 2, length.out = 100)
y1 <- x1^2 + rnorm(100, sd = 0.2)
df1 <- data.frame(x = x1, y = y1)

p1 <- ggplot(df1, aes(x = x, y = y)) +
  geom_point(color = "darkorange") +
  ggtitle("Correlação Não Linear") +
  theme_minimal()

# 2. Correlação linear positiva
x2 <- runif(100, 0, 10)
y2 <- 2 * x2 + rnorm(100, sd = 2)
df2 <- data.frame(x = x2, y = y2)

p2 <- ggplot(df2, aes(x = x, y = y)) +
  geom_point(color = "forestgreen") +
  ggtitle("Correlação Linear Positiva") +
  theme_minimal()

# 3. Correlação linear negativa
x3 <- runif(100, 0, 10)
y3 <- -2 * x3 + rnorm(100, sd = 2)
df3 <- data.frame(x = x3, y = y3)

p3 <- ggplot(df3, aes(x = x, y = y)) +
  geom_point(color = "firebrick") +
  ggtitle("Correlação Linear Negativa") +
  theme_minimal()

# 4. Sem correlação
x4 <- runif(100, 0, 10)
y4 <- rnorm(100)
df4 <- data.frame(x = x4, y = y4)

p4 <- ggplot(df4, aes(x = x, y = y)) +
  geom_point(color = "steelblue") +
  ggtitle("Sem Correlação") +
  theme_minimal()

# Organizar os gráficos em um layout 2x2
grid.arrange(p1, p2, p3, p4, ncol = 2)

##########################################################

# Dados para correlação 1.00
x1 <- 1:20
y1 <- x1
df1 <- data.frame(x = x1, y = y1)

# Correlação ≈ 0.83
x2 <- 1:20
y2 <- x2 + rnorm(20, 0, 3)
df2 <- data.frame(x = x2, y = y2)

# Correlação ≈ 0.02
x3 <- runif(20, 1, 20)
y3 <- runif(20, 1, 20)
df3 <- data.frame(x = x3, y = y3)

# Correlação ≈ -0.98
x4 <- 1:20
y4 <- -x4 + rnorm(20, 0, 0.5)
df4 <- data.frame(x = x4, y = y4)

# Criar gráficos com ggplot2
g1 <- ggplot(df1, aes(x, y)) +
  geom_point(color = "blue") +
  #geom_smooth(method = "lm", se = FALSE, color = "red") +
  ggtitle("Correlação = 1.00") +
  theme_minimal()

g2 <- ggplot(df2, aes(x, y)) +
  geom_point(color = "darkgreen") +
  #geom_smooth(method = "lm", se = FALSE, color = "red") +
  ggtitle(paste("Correlação =", round(cor(x2, y2), 2))) +
  theme_minimal()

g3 <- ggplot(df3, aes(x, y)) +
  geom_point(color = "gray40") +
  #geom_smooth(method = "lm", se = FALSE, color = "red") +
  ggtitle(paste("Correlação =", round(cor(x3, y3), 2))) +
  theme_minimal()

g4 <- ggplot(df4, aes(x, y)) +
  geom_point(color = "darkred") +
  #geom_smooth(method = "lm", se = FALSE, color = "red") +
  ggtitle(paste("Correlação =", round(cor(x4, y4), 2))) +
  theme_minimal()

# Plotar juntos
grid.arrange(g1, g2, g3, g4, ncol = 2)

