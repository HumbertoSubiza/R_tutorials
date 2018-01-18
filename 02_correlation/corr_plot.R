png(file = "corr01.png")
par(mfrow = c(2,2), 
    pty = "s", 
    xaxt = "n",
    yaxt = "n")

# correlação = 1
x = seq(-50,50,2)
y = seq(-50,50,2)
cor1 <- cor(x,y)
plot(x,y, main = paste0("Correlação = ", cor1))

# correlação = .95
x2 = seq(-50,48,2)
y2 = seq(-50,48,2) + rnorm(50,4,10)

cor2 <- cor(x2,y2)
plot(x2,y2, main = paste0("Correlação = ", round(cor2,2)))

# correlação = .54
set.seed(1234)
x3 = seq(-50,48,2)
y3 = seq(-50,48,2) + rnorm(50,25,40)

cor3 <- cor(x3,y3)
plot(x3,y3, main = paste0("Correlação = ", round(cor3,2)))


# correlação = .02
set.seed(123)
x4 = seq(-50,48,2)
y4 = rnorm(50,10,1800)

cor4 <- cor(x4,y4)
plot(x4,y4, main = paste0("Correlação = ", round(cor4,2)))
dev.off()

#------------------------------------------------------------------------------
png(file = "corr02.png")
par(mfrow = c(2,2), 
    pty = "s", 
    xaxt = "n",
    yaxt = "n",
    pch = 19)
# correlação = 1
x5 = seq(-50,50,2)
y5 = seq(50,-50,-2)
cor5 <- cor(x5,y5)
plot(x5,y5, main = paste0("Correlação = ", cor5))


# correlação = .95
x6 = seq(-50,48,2)
y6 = seq(50,-48,-2) - rnorm(50,4,10)

cor6 <- cor(x6,y6)
plot(x6,y6, main = paste0("Correlação = ", round(cor6,2)))

# correlação = .54
set.seed(1234)
x7 = seq(-50,48,2)
y7 = seq(50,-48,-2) - rnorm(50,25,40)

cor7 <- cor(x7,y7)
plot(x7,y7, main = paste0("Correlação = ", round(cor7,2)))

# correlação = .02
set.seed(123)
x8 = seq(-50,48,2)
y8 = rnorm(50,10,1800)

cor8 <- cor(x8,y8)
plot(x8,y8, main = paste0("Correlação = ", round(cor8,2)))

dev.off()

