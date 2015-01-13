library("httr")
library("httpuv")
library("jsonlite")

client_id = "e1523badaf5e34dc0699"
client_secret = "bd8da465a1e57da2a7b8a8d71a533df9e5c94916"

myapp <- oauth_app("github", client_id, client_secret)
github_token <- oauth2.0_token(oauth_endpoints("github"), myapp)
request <- GET("https://api.github.com/users/jtleek/repos", config(token = github_token))

jsonData <- content(request)
jsonData2 <- jsonlite::fromJSON(toJSON(jsonData))
stop_for_status(request)
jsonData2[jsonData2$name == 'datasharing',c('created_at')]