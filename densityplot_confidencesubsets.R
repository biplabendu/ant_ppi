#density plot of confidence subsets
setwd("path/to/inputfolder")

library("readxl")
library(plyr)
library("ggpubr")
library("scales")

#prepare the data
data <- read_excel("file10.xlsx", col_names = T) #input file with one column of confidence subset classifications and one column with CAPPIC scores

#calculate means for all subsets
mu <- ddply(data, "blocks", summarise, grp.mean=mean(CS))
head(mu)

ggplot(data, aes(x=CS, fill = blocks, palette = show_col(pal_npg("nrc")(3))))+
  geom_density(alpha = 0.65, color = "black", size = 1.05)+
  geom_vline(data=mu, aes(xintercept=grp.mean, color=blocks),
             linetype="dashed", size = 1.4)

