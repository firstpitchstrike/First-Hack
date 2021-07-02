### The Mark Prior Project
library(tidyverse)
library(Lahman)
pitching
mark_prior <- pitching %>%
  filter(playerID == "priorma01")
mark_prior

library(ggplot2)
ggplot(mark_prior, aes(x = yearID, y = W))+
  geom_point()
ggplot(mark_prior, aes(x = yearID, y= W)) +
  labs(x = "Year", y = "Wins") +
  geom_line()
ggplot(mark_prior, aes(x = yearID, y = W)) +
  labs(x = "Year", y = "Wins") +
  geom_bar(stat = "identity")  ### had to add stat = identity

