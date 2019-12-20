##comment4: Do hubs and bottlenecks have higher multiple localizations than non?
setwd("path/to/inputfolder")

library("readxl")
library(dplyr)
library("ggsci")
library("ggpubr")
library("scales")


#prepare the data /import
data_frame <- read_excel("file6.xlsx") #categorical localization classification for bottleneck and non-bottleneck proteins
data_frame2 <- read_excel("file7.xlsx") #categorical localization classification for hub and non-hub proteins
data_bar <- read_excel("file9.xlsx", row.names(1)) #exact numbers and percentages of single and multiple-localization in hubs, non-hubs, bottlenecks, non-bottlenecks
pvalue <- read_excel("file8.xlsx") #p-values obtained by Fisher's exact test for the comparison of hubs vs. non-hubs and bottlenecks vs. non-bottlenecks


#Stacked bar plot for proportion of multiple- and single-localized proteins in all four categories

data_bar$name <- factor(data_bar$name, levels =  c("Hub", "Non-hub", "Bottleneck", "Non-bottleneck"))

ggbarplot(data_bar, x = "name", y = "percentage", color = "black", width = 0.5,
                  fill = "local", palette = show_col(pal_npg("nrc")(2))) +
  stat_pvalue_manual(
    data = pvalue,  label = "p_value",
    xmin = "group1", xmax = "group2",
    y.position = "y_position", bracket.size = 0.6)

#Stacked bar plot with y-axis starting at 25

ggbarplot(data_bar, x = "name", y = "percentage", ylim = c(25,105), color = "black", width = 0.5,
          fill = "local", palette = show_col(pal_npg("nrc")(2))) +
  stat_pvalue_manual(
    data = pvalue,  label = "p_value",
    xmin = "group1", xmax = "group2",
    y.position = "y_position", bracket.size = 0.6)

#Fisher's exact test to compare hubs vs. non-hubs / bottlenecks vs non-bottlenecks having more multi-localizations than single (categorical)

table(data_frame$topology, data_frame$local)
fisher.test(data_frame$topology, data_frame$local, alternative = "greater")

table(data_frame2$topology, data_frame2$local)
fisher.test(data_frame2$topology, data_frame2$local, alternative = "greater")


  

