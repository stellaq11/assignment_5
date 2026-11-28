library(dplyr)
library(tidyr)
library(readr)

dig.df <- read.csv("data/DIG-1.csv")

glimpse(dig.df)


dig.df <- dig.df %>%
  select(ID, TRTMT, AGE, SEX, BMI, KLEVEL, CREAT, DIABP, SYSBP, HYPERTEN, CVD, WHF, DIG, HOSP, HOSPDAYS, DEATH, DEATHDAY) %>%
  mutate(
    across(c(ID), as.character),
    across(c(TRTMT, SEX, HYPERTEN, CVD, WHF, DIG, HOSP, DEATH), as.factor),
    across(c(AGE, BMI, KLEVEL, CREAT, DIABP, SYSBP, HOSPDAYS, DEATHDAY), as.numeric),
  )

glimpse(dig.df)



dig.df <- dig.df %>%
  mutate(
    TRTMT    = factor(TRTMT, levels = c(0, 1), labels = c("Placebo",
                                                          "Treatment")),
    SEX      = factor(SEX, levels = c(1, 2), labels = c("Male", "Female")),
    HYPERTEN = factor(HYPERTEN, levels = c(0, 1), labels = c("No", "Yes")),
    CVD      = factor(CVD, levels = c(0, 1), labels = c("No", "Yes")),
    WHF      = factor(WHF, levels = c(0, 1), labels = c("No", "Yes")),
    DIG      = factor(DIG, levels = c(0, 1), labels = c("No", "Yes")),
    HOSP     = factor(HOSP, levels = c(0, 1), labels = c("No", "Yes")),
    DEATH    = factor(DEATH, levels = c(0, 1), labels = c("Alive", "Death"))
  )

glimpse(dig.df)


write_csv(dig.df, "data/dig_cleaned.csv")

