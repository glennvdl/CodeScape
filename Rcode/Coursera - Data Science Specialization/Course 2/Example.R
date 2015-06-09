files_full = list.files("diet_data", full.names=T)
files_full
head(read.csv(files_full[3]))
andy_david = rbind(andy, read.csv(files_full[2]))
andy_david
day_25 = andy_david[which(andy_david$Day == 25),]
day_25

dat <- data.frame() 
for (i in 1:5) {
  dat = rbind(dat, read.csv(files_full[i]))
}

dat_30 = dat[which(dat[,"Day"] == 30),]
median(dat_30$Weight)
