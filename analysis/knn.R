library(class)
library(caret)

df = read.csv("CaseS",header = TRUE)

head(titanicDataDF)

titanicDataDF$SurvivedF = factor(titanicDataDF$Survived, labels = c("Died", "Survived"))

head(titanicDataDF)

trainIndex = sample(seq(1,891,1),600)
trainTitanic = titanicDataDF[trainIndex,]
testTitanic = titanicDataDF[-trainIndex,]

dim(trainTitanic)
dim(testTitanic)

#Plot
trainTitanic %>% ggplot(aes(x = Pclass, y = Age, col = SurvivedF)) + geom_point() + ggtitle("Survival v. Age and Passenger Class") + xlab("Passenger Class")  + 
  geom_jitter()

# We will assume that the ages are missing at random.
trainTitanic= na.omit(trainTitanic)
testTitanic = na.omit(testTitanic)

dim(trainTitanic)
dim(testTitanic)
str(testTitanic)

classifications = knn(train = trainTitanic[(!is.na(trainTitanic$Age) & !is.na(trainTitanic$Pclass)),c("Pclass","Age")], test = testTitanic[(!is.na(testTitanic$Age) & !is.na(testTitanic$Pclass)),c(3,6)], cl = trainTitanic$Survived[(!is.na(trainTitanic$Age) & !is.na(trainTitanic$Pclass))], prob = TRUE, k = 5)
classifications

table(classifications,testTitanic$Survived[(!is.na(testTitanic$Age) & !is.na(testTitanic$Pclass))])
CM = confusionMatrix(table(classifications,testTitanic$Survived[(!is.na(testTitanic$Age) & !is.na(testTitanic$Pclass))]))
CM

CM = confusionMatrix(table(classifications,testTitanic$Survived[(!is.na(testTitanic$Age) & !is.na(testTitanic$Pclass))]),mode = "everything")
CM