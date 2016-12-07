mydata = read.csv("Delete 0 and blank grades 10.27.csv")  # read csv file 

#exclude missing values from analyses
newdata <- na.omit(mydata)

#attach the data
attach(newdata)

# fit a model using days_involved and nevents as X-variables
modeltest1 <-lm(grade ~ days_involved + nevents)

#get a summary of the model
summary(modeltest1)

#calculate Pearson's correlation between dats invovled and nevents
cor(days_involved, nevents, method="pearson")

#ask for confidence intervals for the model coefficients
confint(modeltest1, conf.level=0.95)

#check the regression diagnostic plots for model
plot(modeltest1)

