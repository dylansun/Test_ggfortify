library(ggforitfy)
d.factanal <- factanal(state.x77, factors = 3, scores = 'regression')
autoplot(d.factanal, data = state.x77, colour = 'Income')
autoplot(d.factanal, label = T, label.size = 3, loadings = T, loadings.label = T,
         loadings.label.size = 3)

# K-means clustering
autoplot(kmeans(USArrests,3), data = USArrests)
autoplot(kmeans(USArrests,3), data = USArrests, label = TRUE, label.size = 3)
