# 3.1.1 Frequencies

beer <- c(3, 4, 1, 1, 3, 4, 3, 3, 1, 3, 2, 2, 2, 1, 4, 3, 2, 3, 2, 1, 2, 3, 2, 4, 2)

sum(beer == 3)

table(beer)

sum(beer == 1)/length(beer)

prop.table(table(beer))


# 3.1.2 Empirical distribution function

library(UsingR)
data(exec.pay)
sum(exec.pay <= 10)/length(exec.pay)

Fn <- ecdf(exec.pay)
Fn(10)

exec.pay_new <- exec.pay[exec.pay>100]
plot(ecdf(exec.pay_new), main = "emp. distribution function of severance compensation > 1 million US Dollar")

exec.pay_new

sort(exec.pay_new) 


# 3.1.3 Diagrams for graphical representation

par(mfrow = c(1, 2))
barplot(beer)
barplot(table(beer), xlab = "beer - category", ylab = "frequency")


pie(table(beer), col = rainbow(4))


days <- c(31, 28, 30)
names(days) <- c("January", "February", "April")
par(mfrow = c(1, 2))
pie(days)
dotchart(days, xlab = "days per month")

