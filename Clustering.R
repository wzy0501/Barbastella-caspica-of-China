library(ggplot2)
ggplot(df,aes(x=V2,y=V3))+
  geom_bar(stat="identity",position = "stack")
install.packages("aplot")
library(aplot)
ggplot(df,aes(x=V2,y=V3))+
  geom_bar(stat="identity",position = "stack")
df<-read.csv("rscu.txt",header = F,stringsAsFactors = F)
head(df)
ggplot(df,aes(x=V2,y=V3))+
  geom_bar(stat="identity",position = "stack")
p1<-ggplot(df,aes(x=V2,y=V3,fill = as.character(V4)))+
  geom_bar(stat="identity",position = "stack")+
  theme_bw()+
  theme(legend.position = "none")+
  scale_y_continuous(expand = c(0,0),limits = c(0,6.2))+
  labs(x=NULL,y="RSCU")

p2<-ggplot(df,aes(x=V2,y=V4,fill = as.character(V4)))+
  geom_label(aes(label = V1),size = 4)+
  theme_minimal()+ylim(3.4,6.1)+
  theme(legend.position = "none",
        axis.title = element_blank(),
        axis.text = element_blank(),
        panel.grid = element_blank())

 insert_bottom(p1,p2,height = 0.3)
