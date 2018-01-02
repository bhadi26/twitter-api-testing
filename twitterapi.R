#install package
install.packages("twitteR")
install.packages("httpuv")
install.packages("plyr")



#bring in packages
library(twitteR)
library(ggplot2)
library(httpuv)
library(plyr)



#put in keys 
api_key <- "uCcnzsMhYE1WWFdKUcsca84Jp"

api_secret <- "Zq2Z0XBV8BKRT7BS7R8ngMlcl957PirXdGBvPtt7WDVSqude1l" 

access_token <- "484343944-vzcdd2bOLJjNGLsv5OS3vX5j3tA4EZ7m1kUKqv6J"

access_token_secret <- "bp8LITfXGcZGvhnWn98Ko9WLA4A6iVVcpgEq94fevSDBq"

  
#set up oatuh
setup_twitter_oauth(api_key, api_secret) 




##search for disaster artist related Tweets
oscars <-  twListToDF(searchTwitteR("#disasterartist", n = 5000, lang = 'en'))


#export to csv
write.csv(oscars, file = "P:\\disasterartist.csv")


