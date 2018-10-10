#1.rzut moneta
a= sample(0:1, 4 , rep=TRUE, prob=c(0.4,0.6))
a
mean(a)
?sample
#rep - zwracamy czy nie zwracamy(jak kule)
#sample-losowanie kul(jak w liceum)
#prob - prawdopodobienstwo wylosowania elementow wektora 0:1

#2.wikesza liczba probek
a= sample(0:1, 1000000 , rep=TRUE, prob=c(0.3,0.7))
mean(a)
#prawo wielkich liczb

#3.czytanie danych

#czyszczenie pamiecie:
rm(list=ls())
#ls zwraca wszustkie obiekty w pamieci

#Czytanie plikow CSV

met <- read.csv('/home/student/gg/ED/GG/resAg.csv', header = T)
met

#Czytanie pliku on-line
a=read.table(file = "http://biecek.pl/MOOC/dane/koty_ptaki.csv", sep = ";", dec=",", header = TRUE)

#pobiera katalog projektu
getwd()

met[1,1]
met$src
a$gatunek
a[1]

#Czytanie xlsxow

piwa <- read.csv("/home/student/gg/ED/GG/piwa.csv")
piwa
#paczka tidr zamiana prezentacja dlugich na krotkie i odwrotnie
c=cos(cos(cos((2)))) #magrittr
#paczka dplyr dodaje mozliwosci sqla

#doistalowanie pakietow
install.packages("readxl")
library(readxl) #import
piwa1 <- read.xls("http://kt.agh.edu.pl/~janowski/PiwaWyniki.xlsx",2)
#do zadania 8:
#Rodzaj - zmienna nominalna
#Piwo - zmienna nominalna

summary(piwa1)

#4.Odwloanie do tabel

#wektorowo
piwa[2,5]
piwa[,3]
piwa[2,]

#nazwy kolumn
piwa$Tester
piwa$Rodzaj[30] #??
summary(piwa$Ocena)

#5. API

#jak czytac zewnetrzne dane:
install.packages("SmarterPoland")
library(SmarterPoland)
tsdtr210 <- getEurostartRCV("tsdtr210")


#6.wizualiazcja/zabawa danymi

library(ggplot)
ggplot(data = tsdtr210[tsdtr210$geo == "PL",],
       aes(x=time, y=value, group=vehicle, colour=vehicle))+geom_line()


#7. zapisywanie
#do R
save(piwa, file="pierwszewyniki.rda")
load("peirwszywynk.rda")

#8.zmienne nominalne
summary(met)

?read.csv
#factor moez byc zeminna nominalna i porzadkowom

#sprawdzanie klasy obiektu
class(c)

#zmiana klasy:
class(c) <-c("mojaklasa")
class(c)





























