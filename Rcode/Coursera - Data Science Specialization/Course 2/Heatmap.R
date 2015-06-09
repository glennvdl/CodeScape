nba <- read.csv("http://datasets.flowingdata.com/ppg2008.csv", sep=",")
nba <- nba[order(nba[,4]),]
row.names(nba) <- nba[,1]
nba <- nba [2:20]
nba_matrix <- data.matrix(nba)
nba_heatmap <- heatmap(nba_matrix, Rowv=NA, Colv=NA, col = rainbow(256), scale="column", margins=c(5,10))
