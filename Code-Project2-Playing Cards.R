#https://rstudio-education.github.io/hopr/

  #5 R Objects-----
die <- c(1, 2, 3, 4, 5, 6)
die

#5.1 Atomic Vectors-----
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

#5.2 Attributes-----
names(die) <- c("one", "two", "three", "four", "five", "six")
attributes(die)
die

#5.3 Matrices-----
m <- matrix(die, nrow = 2)
m <- matrix(die, nrow = 2, byrow = TRUE)
m
hand1 <- c("ace", "king", "queen", "jack", "ten", "spades", "spades", "spades", "spades", "spades")
matrix(hand1, nrow = 5)
matrix(hand1, ncol = 2)
dim(hand1) <- c(5, 2)

#5.5.2 Factors-----
gender <- factor(c("male", "female", "female", "male"))
typeof(gender)
attributes(gender)
unclass(gender)
gender
as.character(gender)
card <- c("ace", "hearts", 1)

#5.6 Coercion-----
sum(c(TRUE, TRUE, FALSE, FALSE))
as.character(1)
as.logical(1)
as.numeric(FALSE)

#5.7 List-----
list1 <- list(100:130, "R", list(TRUE, FALSE))
list1

#5.8 Data Frames-----
df <- data.frame(face = c("ace", "two", "six"), suit = c("clubs", "clubs", "clubs"), value = c(1, 2, 3))

#5.10 Saving Data-----
write.csv(deck, file = "cards.csv", row.names = FALSE)

#6R Notataion----
#6.1.1 Positive Integers----
head(deck)
deck[1,1]
new <- deck[1,c(1, 2, 3)]
new
vec <- c(6, 1, 3, 6, 10, 5)
vec[1:3]
deck[1:2, 1, drop = FALSE]

#6.1.2 Negative Integers----
deck[-(2:52), 1:3]

#6.1.3 Zero----
deck[0, 0]

#6.1.4 Blank Spaces----
deck[1,]

#6.1.5 Logical Values----
deck[1, c(TRUE, TRUE, FALSE)]
rows <- c(TRUE, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F)
deck[rows, ]

#6.1.6 Names----
deck[1,c("face", "suit", "value")]
deck[1, "value"]

#6.2 Deal a card----
deal <- function(cards){
  cards[1,]
}

deal(deck)


#6.3 Shuffle the Deck----
deck2 <- deck[1:52, ]
head(deck2)
deck3 <- deck[c(2, 1, 3:52), ]
head(deck3)
random <- sample(1:52, size = 52)
deck4 <- deck[random, ]
head(deck4)

random <- sample(1:52, size = 52)
deck4 <- deck[random, ]