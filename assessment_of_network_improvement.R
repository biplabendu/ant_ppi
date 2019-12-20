##Comment1:Did the cappic scores increase after network filtering steps?
setwd("path/to/inputfolder")

library("readxl")
library(dplyr)
library("ggsci")
library("ggpubr")
library("scales")

#import data
data <- read_excel("file3.xlsx") #input file with cappic scores in each network
p_values <- read_excel("file4.xlsx") #file with p-values calculated by Mann-Whitney U test

#prepare data
levels(data$cluster)

group_by(data, cluster) %>%
  summarise(
    count = n(),
    mean = mean(cappic, na.rm = TRUE),
    sd = sd(cappic, na.rm = TRUE),
    median = median(cappic, na.rm = TRUE),
    IQR = IQR(cappic, na.rm = TRUE)
  )


#Mann-whitney test to compare means of all 4 groups
kruskal.test(cappic ~ cluster, data = data)

pairwise.wilcox.test(data$cappic, data$cluster,
                     p.adjust.method = "BH")


#figure_conflines_pvalues_top (the one used in the paper)

ggline(data, x = "cluster", y = "cappic",
       add = c("mean_se", "jitter", "dot"),
       order = c("Preliminary", "DDI-filtered", "Localization-filtered"),
       ylab = "confidence score", xlab = FALSE, point.size = 1, size = 0.4, color = "black", point.color = "black", 
       add.params = list(color = "cluster", fill_palette(palette = show_col(pal_npg("nrc")(3)))))+
  scale_y_continuous(breaks = seq(0, 1, 0.1))+
  geom_segment(aes(x=0, y=0.3, xend=4, yend =0.3), linetype = "dashed", size = 0.4)+
  geom_segment(aes(x=0, y=0.7, xend=4, yend =0.7), linetype = "dashed", size = 0.4)+
  geom_segment(aes(x=0, y=1, xend=4, yend =1), linetype = "dashed", size = 0.4)+
  stat_pvalue_manual(
    data = p_values, label = "p_value",
    xmin = "group1", xmax = "group2",
    y.position = "y_position", label.size = 4.5
  )
