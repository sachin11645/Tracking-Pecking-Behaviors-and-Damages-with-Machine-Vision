library(tidyverse)
library(gtable)
library(grid)
library(plotly)
library(lubridate)
library(magrittr)
library(gridExtra)
library(ggforce)
library(kableExtra)
library(leaflet)
library(rlang)
library(scales)



df <- read_excel("D:/Grad life/Second sem/Research/Feather Pecking/results(100, 16)/R.xlsx")
df
plot1 <- ggplot(df, aes(x = epoch, y = train.box_loss)) + 
  geom_line(size = 2)+ geom_point(color = "black", size = 3) + scale_y_continuous(labels = comma)+
  xlab('') + ylab('train.box_loss') + labs(title= "Train Box Loss") + 
  theme(axis.text.x=element_text(angle = 45, hjust = 0.5)) + theme_classic()
plot2 <- ggplot(df, aes(x = epoch, y = train.obj_loss)) + 
  geom_line(size = 2)+ geom_point(color = "black", size = 3) + scale_y_continuous(labels = comma)+
  xlab('') + ylab('train.obj_loss') + labs(title= "Train Obj Loss") + 
  theme(axis.text.x=element_text(angle = 45, hjust = 0.5)) + theme_classic()
plot3 <- ggplot(df, aes(x = epoch, y = train.cls_loss)) + 
  geom_line(size = 2)+ geom_point(color = "black", size = 3) + scale_y_continuous(labels = comma)+
  xlab('') + ylab('train.cls_loss') + labs(title= "Train Class Loss") + 
  theme(axis.text.x=element_text(angle = 45, hjust = 0.5)) + theme_classic()
plot4 <- ggplot(df, aes(x = epoch, y = metrics.precision)) + 
  geom_line(size = 2)+ geom_point(color = "black", size = 3) + scale_y_continuous(labels = comma)+
  xlab('') + ylab('metrics.precision') + labs(title= "Precision") + 
  theme(axis.text.x=element_text(angle = 45, hjust = 0.5)) + theme_classic()
plot5 <- ggplot(df, aes(x = epoch, y = metrics.recall)) + 
  geom_line(size = 2)+ geom_point(color = "black", size = 3) + scale_y_continuous(labels = comma)+
  xlab('') + ylab('metrics.recall') + labs(title= "Recall") + 
  theme(axis.text.x=element_text(angle = 45, hjust = 0.5)) + theme_classic()
plot6 <- ggplot(df, aes(x = epoch, y = metrics.mAP_0.5)) + 
  geom_line(size = 2)+ geom_point(color = "black", size = 3) + scale_y_continuous(labels = comma)+
  xlab('') + ylab('metrics.mAP_0.5') + labs(title= "mAP_0.5") + 
  theme(axis.text.x=element_text(angle = 45, hjust = 0.5)) + theme_classic()
plot7 <- ggplot(df, aes(x = epoch, y = metrics.mAP_0.5.0.95)) + 
  geom_line(size = 2)+ geom_point(color = "black", size = 3) + scale_y_continuous(labels = comma)+
  xlab('') + ylab('metrics.mAP_0.5.0.95') + labs(title= "mAP_0.5.0.95") + 
  theme(axis.text.x=element_text(angle = 45, hjust = 0.5)) + theme_classic()
plot10 <- ggplot(df, aes(x = epoch, y = val.box_loss)) + 
  geom_line(size = 2)+ geom_point(color = "black", size = 3) + scale_y_continuous(labels = comma)+
  xlab('') + ylab('val.box_loss') + labs(title= "Val Box Loss") + 
  theme(axis.text.x=element_text(angle = 45, hjust = 0.5)) + theme_classic()
plot9 <- ggplot(df, aes(x = epoch, y = val.obj_loss)) + 
  geom_line(size = 2)+ geom_point(color = "black", size = 3) + scale_y_continuous(labels = comma)+
  xlab('') + ylab('val.obj_loss') + labs(title= "Val Obj Loss") + 
  theme(axis.text.x=element_text(angle = 45, hjust = 0.5)) + theme_classic()
plot8 <- ggplot(df, aes(x = epoch, y = val.cls_loss)) + 
  geom_line(size = 2)+ geom_point(color = "black", size = 3) + scale_y_continuous(labels = comma)+
  xlab('') + ylab('val.cls_loss') + labs(title= "Val Cls Loss") + 
  theme(axis.text.x=element_text(angle = 45, hjust = 0.5)) + theme_classic()

grid.arrange(plot1,
             plot2,
             plot4, 
             plot5,
             plot6, 
             plot7, 
             plot9,
             plot10,
             nrow=2, 
             top = textGrob("",
                            gp=gpar(fontface = 6, fontsize = 18),
                            hjust = 1.6,
                            x=1
             )
) 



