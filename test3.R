library(cluster)
autoplot(clara(iris[-5],3))
autoplot(fanny(iris[-5],3), frame = T)
autoplot(pam(iris[-5], 3), frame = T, frame.type = 'norm')

library(lfda)
model <- lfda(iris[-5], iris[,5], 4, metric = "plain")
autoplot(model, data = iris, frame = TRUE, frame.colour = 'Species')

# Not work!
#model <- klfda(kmatrixGauss(iris[-5]), iris[,5], 4, metric = "plain")
#autoplot(model, data = iris, frame = TRUE, frame.colour = 'Species')

