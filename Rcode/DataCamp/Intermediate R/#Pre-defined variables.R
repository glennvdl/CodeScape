#Pre-defined variables
rquote <- "R's internals are irrefutably intriguing"
chars <- strsplit(rquote, split = "")[[1]]
rcount <- NULL
# Your solution here
for (item in chars) {
  if(item == "u" | item == "U") {
    break
  } else if (item == "R" | item == "r") {
    rcount = rcount + 1
  } else {
    next
  }
}  

# Print the resulting rcount variable to the console
rcount