#Breaking loops

#DataCamp
#DataCamp - Intermediate R
#DataCamp - Intermediate R - Loops

# Initialize i
i = 0

# Code the while loop
while (i <= 10) {
  i = i + 1
  print(i*3)
  if ((i*3) %% 8 == 0) {
  break
  }
}