#This program takes the raw USGS daily gage data output in a text format

gage<-read.table('olentangy.txt', fill=TRUE, header=TRUE, skip=27)
names(gage)<- c("Agency", "Gage", "Date", "Flow", "Coding")

#Annual
annual<-sort(gage$Flow, decreasing=TRUE)

cnt<-length(annual)
c<-1:cnt

for (i in cnt) {
 x<-(100*(c/(cnt+1)))
}

plot(x, annual, xlab = "Percent Exceedence", ylab = "Flow (cfs)", 
	main = "Annual Flow Duration Curve", type = "l")

