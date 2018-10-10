#losowanie kostki
a = sample(0:1, 40, rep = TRUE, prob=c(0.4,0.6))
a
mean(a)
#Dla duzej ilosci prob
a = sample(0:1, 10000, rep = TRUE, prob=c(0.4,0.6))
mean(a)
#czyszczenie pamieci
rm(list=ls())
#Czytanie plikow CSV
met <- read.csv('/home/student/ED/ED/MR/resAg.csv',header = T)
met <- read.csv('/home/student/ED/ED/MR/resAg.csv',header = T)
#Czytanie plikow on-line(pogromcydanych.icm.edu.pl)
read.table(file = "http://biecek.pl/MOOC/dane/koty_ptaki.csv", sep=";", header=TRUE)

