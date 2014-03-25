va<-read.table("processed.va.data", sep=",")
va[,15]<-rep("VA", 200)
write.csv(va, "va.csv")

cleve<-read.table("processed.cleveland.data", sep=",")
cleve[,15]<-rep("Cleveland", 303)
write.csv(cleve, "cleveland.csv")

switz<-read.table("processed.switzerland.data", sep=",")
switz[,15]<-rep("Switzerland", 123)
write.csv(switz, "switzerland.csv")

hung<-read.table("reprocessed.hungarian.data", sep=" ")
hung[,15]<-rep("Hungary", 295)
write.csv(hung, "hungary.csv")

whole<-rbind(va, cleve, switz, hung)

colnames(whole)<-c("age","sex", "cp", "trestbps", "chol", "fbs", "restecg", "thalach", "exang", "oldpeak", "slope", "ca", "thal", "num", "place")

write.csv(whole, "HeartDataAll.csv")