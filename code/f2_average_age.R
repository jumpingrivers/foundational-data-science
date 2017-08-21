cupid = readRDS("data/okcupid.rds")
par(mar=c(2,2,2,1), mgp=c(1,0.1,0), tck=-.01, cex.axis=0.9, las=1, mfrow=c(1, 1))

y = cumsum(cupid$age)/1:nrow(cupid)
plot(y, type="l", xlab= "Sample size", ylab="Age",
     col="steelblue", lwd=2, frame=FALSE, axes=FALSE,
     panel.first = abline(h = seq(22, 36, 2), col="grey80"), 
     ylim=c(22, 35)
)
axis(1, tick=FALSE)
axis(2, tick=FALSE)
text(55000, 33, "Average age", col="steelblue")
text(5000, 35, "The 110 year old", col="forestgreen")
