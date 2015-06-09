#Draft - Creating Ping Pong tournament sheet by randomizing different matches

x <- c("sofie","dan","amaelle","mathieu","julien","glenn","bart","vincent","dhan","maxime","Jennifer")
result <- combn(x,2)
result2 <- data.frame(result)
gameplan <- sample(result2,55)

WriteXLS("gameplan","Output.xls")


#How many possible scenario's are there?

combination_list <- c(55:1)
combination_list2 <- as.numeric(combination_list)

multiply <- function(input) {
  total = 1 #cannot start at zero, otherwise result will always be zero
  for (line in input) {
    total = total * line
  }
  return(total)
}


multiply(combination_list2)

# Would be same as:
#K <- 55 * 54 * 53 * 52 * 51 * 50 * 49 * 48 * 47 * 46 * 45 * 44 * 43 * 42 * 41 * 40 * 39 * 38 * 37 * 36 * 35 * 34 * 33 * 32 * 31 * 30 * 29 * 28 * 27 * 26 * 25 * 24 * 23 * 22 * 21 * 20 * 19 * 18 * 17 * 16 * 15 * 14 * 13 * 12 * 11 * 10  * 9  * 8  * 7  * 6  * 5  * 4  * 3  * 2  * 1


