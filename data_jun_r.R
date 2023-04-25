data_jun <- read.csv("/data_jun.csv")
s_data_jun <- data.frame(scale(data_jun))
head(s_data_jun)

#重回帰分析
result <- lm(futoko_rate_jun ~ stu_per_tch_jun + classes_jun + rate_jun + rate_OII_jun + rate_Lve_jun, data = s_data_jun)
result2 <- lm(futoko_rate_jun ~ ., data=s_data_jun)
summary(result)
summary(result2)

#95%信頼区間
confint(lm(futoko_rate_jun ~ stu_per_tch_jun + classes_jun + rate_jun + rate_OII_jun + rate_Lve_jun, data = data_jun))

#それぞれの相関係数
cor(data_jun)

#多重共感性の確認
install.packages("car")
library(car)
vif(lm(futoko_rate_jun ~ stu_per_tch_jun + classes_jun + rate_jun + rate_OII_jun + rate_Lve_jun, data = data_jun))
