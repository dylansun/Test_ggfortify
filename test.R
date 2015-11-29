library(ggfortify)
df <- iris[c(1,2,3,4)]
autoplot(prcomp(df))

autoplot(prcomp(df), data = iris, colour = 'Species')

autoplot(prcomp(df), data = iris, colour = "Species", label = T, label.size = 3)

autoplot(prcomp(df), data = iris, colour = 'Species', shape = F, label.size = 3)

autoplot(prcomp(df), data = iris, colour = 'Species', loadings = T)

autoplot(prcomp(df), data = iris, colour = 'Species', laodings = T, loadings.colour = 'blue',
         loadings.label = T, laodings.label.size = 3)

