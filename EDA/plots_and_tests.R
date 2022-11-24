library(tidyverse)
library(skimr)
library(rstatix)
library(finalfit)

# Import data
college_statistics <- read_csv("college_statistics.csv")

# Remove 'Rank' column
college_statistics <- college_statistics %>% select(!Rank)

# Convert character column to factor
college_statistics <- college_statistics %>% 
  mutate(Degree_Length = factor(Degree_Length, levels = c("2 Year", "4 Year"))  ) 

# Examine the data
glimpse(college_statistics)

######### Plotting the data 
college_statistics %>% 
  ggplot(aes(y=Early_Career_Pay, x=Type, color = Region)) +
  geom_boxplot(position=position_dodge(1))+
  facet_wrap(~Type, scales = "free_x")+
  ggtitle("Early career pay in across Region by Type")+
  theme_bw()+
  theme(plot.title = element_text(hjust = 0.5))
##log transformed
college_statistics %>% 
  ggplot(aes(y=Early_Career_Pay, x=Type, color = Region)) +
  geom_boxplot(position=position_dodge(1))+
  scale_y_continuous(trans = "log")+
  facet_wrap(~Type, scales = "free_x")+
  ggtitle("Early career pay in across Region by Type")+
  theme_bw()+
  theme(plot.title = element_text(hjust = 0.5))

college_statistics %>% 
  ggplot(aes(y=Early_Career_Pay, x=Region, color = Region)) +
  geom_boxplot(position=position_dodge(1))+
  scale_y_continuous(trans = "log")+
  ggtitle("Early career pay in across states by region")+
  theme_bw()+
  theme(legend.position = "none") +
  theme(plot.title = element_text(hjust = 0.5))
 
college_statistics %>% 
  ggplot(aes(x=Early_Career_Pay, y=State, color = State)) +
  geom_boxplot(position=position_dodge(1))+
  facet_wrap(~Region, scales = "free_y")+
  ggtitle("Early career pay in across states by region")+
  theme_bw()+
  theme(legend.position = "none") +
  theme(plot.title = element_text(hjust = 0.5))

# log scal transformed
college_statistics %>% 
  ggplot(aes(x=Early_Career_Pay, y=State, color = State)) +
  geom_boxplot(position=position_dodge(1))+
  scale_x_continuous(trans = "log")+
  facet_wrap(~Division, scales = "free_y")+
  ggtitle("Early career pay in across states by region")+
  theme_bw()+
  theme(legend.position = "none") +
  theme(plot.title = element_text(hjust = 0.5))

##########

college_statistics %>% 
  ggplot(aes(y=Early_Career_Pay, x=Type, color = Type)) +
  geom_boxplot(position=position_dodge(1))+
  theme_bw()+
  theme(legend.position = "none") +
  theme(plot.title = element_text(hjust = 0.5))


college_statistics %>% 
  ggplot(aes(y=Early_Career_Pay, x=Type, color = Type)) +
  geom_boxplot(position=position_dodge(1))+
  theme_bw()+
  theme(legend.position = "none") +
  theme(plot.title = element_text(hjust = 0.5))
####### Statisical tests

college_statistics %>% 
     t_test(Early_Career_Pay~Type)

college_statistics %>% 
  anova_test(Early_Career_Pay~Region)

college_statistics %>% 
  anova_test(Early_Career_Pay~State)

anova_r <- college_statistics %>% 
  anova_test(Early_Career_Pay~State*Region)

anova_summary(anova_r)

college_statistics %>% 
  cor_test(Early_Career_Pay, method="pearson")


##### analysis using finalfit package

dependent = "Early_Career_Pay"
explantory = c("State", "Region", "Division", "Type")

tab1 <- college_statistics %>% 
  summary_factorlist(dependent, explantory, p=TRUE, na_include=TRUE)

kable(tab1, row.names = FALSE)
