#  This is used in tsaEZ but not in Ed 4 because it was too late to add it
#  the data set is now in astsa v1.7.1+ 

######################
library(astsa)   # if use version 1.7.1 or higher
pdf(file="hor.pdf", width=6.5, height=4) 
culer = c(rgb(0,.55,0), 4, 2, 6)
par(mfrow = c(2,1), mar=c(1.5,2,1,0)+.5, mgp=c(1.6,.6,0), cex.main=1)
x = window(hor, start=2002)
plot(x, main='Hawaiian Quarterly Occupancy Rate', xlab='', ylab='% rooms', ylim=c(62,86), col=gray(.7))
text(x, labels=1:4, col=culer, cex=.8)
#
Qx = stl(x,15)$time.series[,1] 
plot(Qx, main="Seasonal Component",  xlab='',ylab='% rooms', ylim=c(-4.7,4.7), col=gray(.7))
text(Qx, labels=1:4, col=culer, cex=.8)
dev.off()

##### with all the components #######################
library(astsa)   # if use version 1.7.1 or higher
pdf(file="hor2.pdf", width=6.5, height=6.5) 
culer = c(rgb(0,.55,0), 4, 2, rgb(.7,0,.7))
par(mfrow = c(4,1), mar=c(1.5,2,1,0)+.5, mgp=c(1.6,.6,0), cex.main=1)
x = window(hor, start=2002)
plot(x, main='Hawaiian Quarterly Occupancy Rate', xlab='', ylab='% rooms', ylim=c(62,86), col=gray(.7))
text(x, labels=1:4, col=culer)
STL = stl(x, s.window=15)
#
Qx = STL$time.series[,1] 
plot(Qx, main="Seasonal Component",  xlab='',ylab='% rooms', ylim=c(-4,4),  col=gray(.7))
text(Qx, labels=1:4, col=culer)
#
Tx = STL$time.series[,2] 
plot(Tx, main="Trend Component",  xlab='',ylab='% rooms',  ylim=c(64,82), col=gray(.7))
text(Tx, labels=1:4, col=culer)
#
Nx = STL$time.series[,3] 
plot(Nx, main="Noise Component",  xlab='',ylab='% rooms', ylim=c(-2.4,2.2),  col=gray(.7))
text(Nx, labels=1:4, col=culer)
dev.off()

#####################################
########## original data set ########
hor <- c(
79.0, 65.9, 70.9, 66.7,   
75.2, 68.1, 71.7, 66.5,   
84.0, 75.6, 74.6, 75.1,   
88.1, 69.1, 75.0, 72.5,   
87.0, 78.8, 79.9, 76.8,   
88.0, 77.1, 82.1, 77.8,   
81.7, 75.1, 81.3, 75.1,   
85.9, 73.9, 81.0, 75.7,   
83.9, 75.5, 81.0, 74.3,   
68.2, 70.7, 79.7, 72.5,   
75.3, 68.6, 75.5, 75.2,   
75.3, 67.9, 73.8, 72.5,   
80.9, 72.7, 79.1, 74.8,   
79.5, 70.3, 79.2, 75.1,   
81.9, 72.3, 77.1, 70.0,   
79.5, 70.8, 75.5, 69.9,   
77.4, 68.7, 72.9, 67.7,   
77.0, 67.7, 75.0, 68.7,   
79.2, 75.2, 78.5, 73.1,   
80.7, 70.7, 70.3, 57.2,   
71.7, 67.9, 72.5, 67.1,   
74.4, 67.1, 77.4, 71.3,   
80.2, 75.7, 81.5, 73.4,   
83.8, 78.4, 84.8, 77.2,   
83.6, 78.2, 82.5, 74.1,   
77.5, 72.0, 78.6, 72.0,   
78.7, 68.8, 70.5, 63.8,   
66.7, 63.7, 67.3, 63.5,   
70.6, 67.3, 75.2, 69.5,   
76.6, 68.6, 76.1, 71.9,   
80.3, 73.8, 78.9, 74.5,   
82.0, 74.2, 77.8, 72.3,   
80.8, 74.0, 78.7, 74.7,   
80.0, 77.9, 79.9, 78.0)  
                              
hor = ts(hor, freq=4, start=1982)
###################################
###################################






	 
