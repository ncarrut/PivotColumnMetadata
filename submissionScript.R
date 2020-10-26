library(RWordPress)
library(knitr)
opts_knit$set(upload.fun = function(file){uploadFile(file)$url})
options(
  WordpressLogin = c(username = "password"), 
  WordpressURL = "https://datascienceplus.com/xmlrpc.php"
)
knit2wp("your_rmarkdown_file.Rmd", 
        title = "The Post Title", 
        publish = FALSE)