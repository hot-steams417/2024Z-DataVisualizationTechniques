###########################################
###    TECHNIKI WIZUALIZACJI DANYCH     ###
###           LABORATORIUM 1            ###
###########################################


# 0. Prowadzący  -------------------------------------------------------------

# Anna Kozak/Maciej Chrabąszcz/Hubert Ruczyński/Katarzyna Woźnica
# Kontakt: MS Teams lub mail


# 1. Sposób pracy na zajęciach laboratoryjnych -------------------------------

# a) pracujemy w R (większość semestru) i Python
# b) pracujemy na przygotowanych plikach, które będą na repozytorium przedmiotu
# c) podczas zajęć prowadzący będzie wprowadzał zagdanienia, a następnie będzie rozwiązywanie zadań w celu utrwalenia wiadomości
# d) kolejna porcja materiału będzie omawiana jeżeli większość grupy wykona zadane zadanie 
# e) wszelkie pytania czy to związane z kodem, pracą domową czy kwestie teoretyczne proszę śmiało zgłaszać prowadzącemu 


# 2. Materiały ------------------------------------------------------------

# Repozytorium na GitHub
# https://github.com/kozaka93/2024Z-DataVisualizationTechniques


# 3. Jak działa GitHub? ---------------------------------------------------

# Jak zgłosić pracę domową/projekt? (fork, commit, pull request)
# https://rogerdudler.github.io/git-guide/


# 4. Podstawy R - rozgrzewka ----------------------------------------------

data(mtcars)
head(mtcars)


?mtcars
str(mtcars)
mtcars[1,]



# Jak wybieramy wiersze (obserwacje) oraz kolumny (zmienne)?


# Pierwszy wiersz, pierwsza kolumna?
mtcars[1,1]

# 10 pierszych wierszy, 2 i 3 kolumna?
head(mtcars[,2:3],10)

# Jak wybieramy kolumny po nazwach? 


# Wszystkie wiersze i kolumny w kolejności "am", "wt", "mpg"?
mtcars[,c("am","wt","mpg")]

# Jak wybierać jedną kolumnę?

# Uwaga na przecinek i wybór kolumn poprzez indeksy

# Pytania

# 1. Wymiar ramki danych


# 2. Jakie są typy zmiennych?


# 3. Ile jest unikalnych wartości zmiennej "cyl" i jakie to są wartości?
unique(mtcars$cyl)
length(unique(mtcars$cyl))

# 4. Jaka jest średnia wartość zmiennej "drat" dla samochodów 
# o wartości zmiennej "cyl" równej 4?
mean(mtcars[mtcars$cyl == 4, c("drat")])

# 5. Jakie są unikalne wartości zmiennej "am" i jaki jest ich rozkład (liczba wystąpień)? 



# Prosty wykres


# Zależność "mpg" i "hp" - scatter plot

plot(mtcars$mpg,mtcars$hp)
# Zmienna "cyl" - barplot


# 5. Zadanie "proton" -----------------------------------------------------

# Utwórz nowy plik .R. Zainstaluj/uruchom pakiet proton:
install.packages("proton")
library(proton)
proton()
# W pliku zapisuj sposób rozwiązania gry.
employees[employees$surname == "Insecure",]
proton(action = "login", login="johnins")
top1000passwords
for (pass in top1000passwords) {
  return <- proton(action = "login", login="johnins", password=pass)
  if (return == 'Success! User is logged in!'){
    cat(pass)
  }
}

employees[employees$surname == "Pietraszko",]
data.frame(table(logs[logs$login == 'slap',c("host")]))

proton(action = "server", host="194.29.178.16")
bash_history
s <- strsplit(bash_history, " ")

c <- c()
 for (x in s) {
   c <- c(c,x[[1]])
 }
for (c in unique(c)){
  proton(action="login",login="slap",password=c)
}

# 6. Zamieszczamy rozwiązanie na repozytorium -----------------------------

