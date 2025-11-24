library(boot)
library(leaps)
library(MASS)
library(lars)
library(pls)
library(glmnet)
library(splines)
set.seed(42)

data <- read.csv("/Users/anniefeng/Documents/F25-STATS101C-FinalProject/aluminum_coldRoll_train.csv")

train_idx <- sample(1:nrow(data), nrow(data)/2)
train <- data[train_idx, ]
test  <- data[-train_idx, ]

