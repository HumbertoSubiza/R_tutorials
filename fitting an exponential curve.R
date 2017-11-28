# How to fit an exponential curve in R
# (from @drob, David Robinson), with modifications

# loading libraries
library(tidyverse)
library(broom)
library(stats)

# starting variables
x = 1:50
y = .92^x*exp(rnorm(50,0,.1))

# fitting a lm model, just kidding...
modelo <- lm(y~x)

data.frame(x = 1:50, y = .92^x*exp(rnorm(50,0,.1)))      %>% 
  nls(y ~ k*(1 + r)^x, data = ., start = list(k=1, r=0)) %>%
  augment()                                              %>% 
  ggplot(aes(x,y))                                       +
  geom_point()                                           +
  geom_line(aes(y = .fitted), color = "red", size = 1.3) + # the exponential
  geom_smooth(method = "loess", se = F, size = 1.3 )     + # the "loess
  geom_smooth(method = "lm", se = F, size = 1.3, col = "green") # the "lm
 
