# Install rtweet package
install.packages("rtweet")
install.packages("plyr")

#load packages
library(rtweet)
library(ggplot2)
library(plyr)


# Input app name
appname <- "oscars"

# Input api key 
key <- "uCcnzsMhYE1WWFdKUcsca84Jp"

# Input api secret 
secret <- "Zq2Z0XBV8BKRT7BS7R8ngMlcl957PirXdGBvPtt7WDVSqude1l"

# create token named "twitter_token"
twitter_token <- create_token(
  app = appname,
  consumer_key = key,
  consumer_secret = secret)

# Retrieve tweets for a particular hashtag
twitter1 <- search_tweets("#DisasterArtist", n = 2000, token = twitter_token)


#search for new years
twitter2 <- search_tweets("#newyearnewme", n = 10000, token = twitter_token)



#write to csv 
write.csv(twitter2,"P:\\newyearnewme.csv")


