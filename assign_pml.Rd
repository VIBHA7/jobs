library(AppliedPredictiveModeling)
library(caret)
training<-read.csv("pml-training.csv")
testing<-read.csv("pml-testing.csv")
trainclear <-training[,c(7:10,160)]
set.seed(32343)
modelFit <-train(trainclear$classe~., data = trainclear,
 method="rf")
modelFit
prediction <-predict(modelFit,newdata=testing)
prediction
