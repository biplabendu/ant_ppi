##Comment3: Do interacting proteins have higher MF similarity than non-interacting proteins?
setwd("path/to/inputfolder")

library("readxl")
library(dplyr)
library("ggsci")
library("ggpubr")
library("scales")

#prepare the data

my_data <- read_excel("file5.xlsx") #input file with semantic MF similarity values for all interacting and non-interacting pairs
levels(my_data$cluster)
a<-group_by(my_data, cluster) %>%
  summarise(
    count = n(),
    mean = mean(score, na.rm = TRUE),
    sd = sd(score, na.rm = TRUE),
    median = median(score, na.rm = TRUE),
    IQR = IQR(score, na.rm = TRUE)
  )
b<-a %>% data.frame #can be used to see the whole data frame


#We want to know if there is any significant difference between average gogo score between HC-interacting and 30 100-line non-interacting protein sets
kruskal.test(score ~ cluster, data = my_data)

pairwise.wilcox.test(my_data$score, my_data$cluster,
                     p.adjust.method = "BH", paired = FALSE)



#line plot of all means

ggline(my_data, x = "cluster", y = "score",
       add = c("mean_se"), point.size = 2,
       order = c("PPI", "nonPPI-1", "nonPPI-2", "nonPPI-3", "nonPPI-4", "nonPPI-5", "nonPPI-6", "nonPPI-7", 
                 "nonPPI-8", "nonPPI-9", "nonPPI-10", "nonPPI-11", "nonPPI-12", "nonPPI-13", "nonPPI-14", "nonPPI-15", 
                 "nonPPI-16", "nonPPI-17", "nonPPI-18", "nonPPI-19", "nonPPI-20", "nonPPI-21", "nonPPI-22", "nonPPI-23", 
                 "nonPPI-24", "nonPPI-25", "nonPPI-26", "nonPPI-27", "nonPPI-28", "nonPPI-29", "nonPPI-30"), linetype = "dotted", size = 1,
       ylab = "score", xlab = FALSE, color = "steelblue", point.color = "black")+ rotate_x_text(angle = 90,  hjust = NULL, vjust = NULL)

