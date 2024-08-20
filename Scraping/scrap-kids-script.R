######################
# WEB SCRAPING + SQL
######################

page <- "https://www.yoox.com/uk/boy/sale/kids/shoponline?dept=saleboy_kid"
library(rvest)
kids.offer <- read_html(page)

# Data: Brand, Microcategory, Price, OFF, newPrice

# Brand
c.brand <- c()
cards <- html_nodes(kids.offer, ".brand")
# for each card
for (c in cards){
    card.brand <- html_text(c)
    c.brand <- c(c.brand, card.brand)
}
print(c.brand)

# Microcategory
c.microcategory <- c()
cards <- html_nodes(kids.offer, ".microcategory")
# for each card
for (c in cards){
   card.microcategory <- html_text(c)
   card.microcategory <- trimws(card.microcategory, whitespace = "[ \n\r]")
   c.microcategory <- c(c.microcategory, card.microcategory)
}
print(c.microcategory)

# Price
c.price <- c()
cards <- html_nodes(kids.offer, ".oldprice")
# for each card
for (c in cards){
   card.price <- html_text(c)
   card.price <- gsub("[ £]", "", card.price)
   card.price <- as.numeric(card.price)
   c.price <- c(c.price, card.price)
}
print(c.price)

# OFF
c.off <- c()
cards <- html_nodes(kids.offer, ".element")
# for each card
for (c in cards){
   card.off <- html_text(c)
   card.off <- gsub("[ OFF()%]", "", card.off)
   card.off <- as.numeric(card.off)
   c.off <- c(c.off, card.off)
}
print(c.off)

# newPrice
c.newprice <- c()
cards <- html_nodes(kids.offer, ".retail-newprice")
# for each card
for (c in cards){
  card.newprice <- html_text(c)
  card.newprice <- gsub("[ £]", "", card.newprice)
  card.newprice <- as.numeric(card.newprice)
  c.newprice <- c(c.newprice, card.newprice)
}
print(c.newprice)

# The Data SET
df <- data.frame(brand=c.brand, microcategory=c.microcategory, price=c.price, off.perc=c.off, newprice=c.newprice)
View(df)

# SQL INSERT INTO
table <- "Cloths"
s <- c()
for (r in 1:nrow(df)) {
  stat <- paste("INSERT INTO ", table, " VALUES(", r, sep="")
  for (c in 1:ncol(df)) {
    
    if (is.numeric(df[r,c])){
      value <- df[r,c]} 
    else {value <- paste("'", df[r,c], "'", sep="")}
    
    stat <- paste(stat, value, sep=",")
  }
  stat <- paste(stat, ");", sep="")
  s <- c(s, stat)
}

write.table(s, file="cloths.sql", quote=FALSE, row.names=FALSE, col.names=FALSE)





