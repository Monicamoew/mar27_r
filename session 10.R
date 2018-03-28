library(stringr)

print("
# This is wrong, R does not recognize single quotation

print("/"")
cat("\"")
# use cat() to print the "

cat("DSO\n5545")
# \n to change line
# \ is an escaping code

#2
cat(":-\"")
cat(":-\\")  # to print the emoji :-\ , escape the \"

cat("(^_^\")") # to print (^_^")

cat("@_\'-\'")

cat("\\m/")

#3
?str_locate
?str_sub

#4
str_locate(string = "great", pattern = "a")
str_locate("fantastic","a")
str_locate_all("fantastic","a")
str_locate(c("fantastic","great","super"),"a")
data = str_locate

#5 extract tes from testing using str_sub, 
#by specify which position the letter is from 
str_sub(string = "testing", start = 1, end = 3)

str_sub(string = "testing", start = 4) 
# default go to the end

#6
input <- c("abc","defg")
str_sub(input,c(2,3))

#7
emails <- readRDS("email.rds") 

emails[1]
cat(emails[1])

str_locate(emails[1],pattern = "\n\n")
#\n\n means change line

cat(str_sub(emails[1],start = 1, end = str_locate(emails[1],pattern = "\n\n")))

header = str_sub(emails[1],
                 start = 1,
                 end = 842)

cat(header)

body = str_sub(emails[1],
               start = 843)
cat(body)
str_locate(string = "", pattern = "-")

#10 

headers <- str_sub(emails, start =1,
                   end = str_locate(emails, pattern = "\n\n")
                   )

cat(headers)

bodys <- str_sub(emails, start = str_locate(emails, pattern = "\n\n" + 1))

breaks = str_locate(emails, "\n\n")
headers = str_sub(emails, end = breaks[,1])                 
bodies = str_sub(emails, start = breaks[,2])
