#https://rstudio-education.github.io/hopr/

  #5 R Objects#
die <- c(1, 2, 3, 4, 5, 6)
die

#5.1 Atomic Vectors
is.vector(die)
length(die)
int <- c(1L, 5L)
text <- c("ace", "hearts")
typeof(die)
typeof(text)
3>4
logic <- c(TRUE, TRUE, FALSE)
typeof(logic)
hand <- c("ace", "king", "queen", "jack", "ten")
typeof(hand)
dim(die) <- c(3, 2)
die

#5.2 Attributes
names(die) <- c("one", "two", "three", "four", "five", "six")
attributes(die)
die

#5.3 Matrices
m <- matrix(die, nrow = 2)
m <- matrix(die, nrow = 2, byrow = TRUE)
m
hand1 <- c("ace", "king", "queen", "jack", "ten", "spades", "spades", "spades", "spades", "spades")
matrix(hand1, nrow = 5)
matrix(hand1, ncol = 2)
dim(hand1) <- c(5, 2)

#5.5.2 Factors
gender <- factor(c("male", "female", "female", "male"))
typeof(gender)
attributes(gender)
unclass(gender)
gender
as.character(gender)
card <- c("ace", "hearts", 1)

#5.6 Coercion
sum(c(TRUE, TRUE, FALSE, FALSE))
as.character(1)
as.logical(1)
as.numeric(FALSE)
