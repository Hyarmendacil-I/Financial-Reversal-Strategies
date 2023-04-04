getwd()

eql<-read.csv("Equal.csv",header = TRUE)
avg<-read.csv("Average.csv", header = TRUE)
fm3<-read.csv("3FM.csv", header = TRUE)

View(eql)
View(avg)
View(fm3)

length(eql$Low)
length(eql$High)

y_avg <- avg$High-avg$Low
y_eql <- eql$High - eql$Low

model_eql <- lm(y_eql~ fm3$Mkt.RF+fm3$SMB+fm3$HML)
model_avg <- lm(y_avg~ fm3$Mkt.RF+fm3$SMB+fm3$HML)

summary(model_eql)
summary(model_avg)
