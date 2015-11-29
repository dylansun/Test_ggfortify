library(ggfortify)
autoplot(AirPassengers)
autoplot(AirPassengers, ts.colour = 'red', ts.linetype = 'dashed')

library(vars)
data(Canada)
autoplot(Canada)
autoplot(Canada, facets = F)

library(xts)
autoplot(as.xts(AirPassengers), ts.colour =  'green')

library(timeSeries)
autoplot(as.timeSeries(AirPassengers), ts.colour =  ('dodgerblue3'))
autoplot(AirPassengers, ts.geom = 'bar', fill = "blue")
autoplot(AirPassengers, ts.geom = 'point', shape = 3)

library(forecast)
d.arima <- auto.arima(AirPassengers)
d.forecast <- forecast(d.arima, level = c(95), h = 50)
autoplot(d.forecast)
autoplot(d.forecast, ts.colour = 'firebrick1', predict.colour = 'red',
         predict.linetype = 'dashed', conf.int = F)

library(vars)
data(Canada)
d.vselect <- VARselect(Canada, lag.max = 5, type = 'const')$selection[1]
d.var <- VAR(Canada, p = d.vselect, type = 'const')
autoplot(predict(d.var, n.ahead = 50), ts.colour = 'dodgerblue4',
         predict.colour = 'blue', predict.linetype = 'dashed')

library(changepoint)
