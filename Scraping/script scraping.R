library(Rcrawler)

ws <- "www.pinacotecabologna.beniculturali.itit/"
ws1 <- "https://www.eataly.net/it_it/spesa-online/panetteria"
getwd()

Rcrawler(Website = ws1,no_cores = 4, no_conn=4,MaxDepth = 1)


##################
# WEB SCRAPING
##################

page <- "https://www.eataly.net/it_it/spesa-online/pasta-riso/pasta-fresca"
library(rvest)
pasta.offer <- read_html(page)

# Data: Name, Manufacturer, Weight, Price

# Name

c.name <- c()
cards <- html_nodes(pasta.offer, ".product-card-name") #helps to sxtract oieces of the web
# for each card
for (c in cards){
  card.name <- html_text(c)
  card.name <- trimws(card.name, whitespace = "[ \n]")
  c.name <- c(c.name, card.name)
}
print(c.name)

# Manufacturer
c.manufacturer <- c()
cards <- html_nodes(pasta.offer, ".product-card-manufacturer")
# for each card
for (c in cards){
  card.manufacturer <- html_text(c)
  card.manufacturer <- trimws(card.manufacturer, whitespace = "[ \n]")
  c.manufacturer <- c(c.manufacturer, card.manufacturer)
}
print(c.manufacturer)

# Price
c.price <- c()
cards <- html_nodes(pasta.offer, ".final-price")
# for each card
for (c in cards){
  card.price <- html_text(c)
  card.price <- gsub("[ €]", "", card.price)
  card.price <- gsub(",", ".", card.price)
  card.price <- as.numeric(card.price)
  c.price <- c(c.price, card.price)
}
print(c.price)

# Info
c.info <- c()
cards <- html_nodes(pasta.offer, ".item-info")
# for each card
for (c in cards){
  card.info <- html_text(c)
  card.info <- strsplit(card.info, split=" ")
  c.info <- c(c.info, card.info[[1]][3])
}
print(c.info)

# The Data SET
df <- data.frame(product=c.name, weight=c.info, price=c.price, manufacturer=c.manufacturer)
print(df)
write.csv(df, file="pasta.csv")


install.packages("OECD");
library(OECD);
ds.list <- search_dataset(string="waste", 
                          data=get_datasets(),
                          ignore.case=TRUE
);
View(ds.list);
ds <- ds.list[3, "id"];
ds.desc <- ds.list[3, "title"]
print(ds);
print(ds.desc);

############################################
browse_metadata(ds);
############################################
############################################

data.sel <- get_dataset(dataset=ds,
                        filter=list(c("ITA")),
                        start_time=2005,
                        end_time=2010
);

############################################
data <- get_dataset(dataset=ds);
# subset() is the easiest way to select variables and observations
data.sel <- subset(select=c("COU", "ObsValue", "UNIT", "Time", "VAR"),
                   x=data,
                   subset=(COU=="ITA" & Time >= 2005 & Time <= 2010)
);

View(data.sel);


