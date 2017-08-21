x = 0:100
n = max(x)
p = 0.25
par(mar=c(3,3,2,1), mgp=c(2,0.4,0), tck=-.01, cex.axis=0.9, las=1, mfrow=c(1,3))
plot(x, dbinom(x, n, p),
     ylim=c(0, 0.1), frame=FALSE, axes=FALSE,
     pch=21, bg ="steelblue", ylab="Probability")
axis(1); axis(2, tick = FALSE)
grid()

p = 0.5
plot(x, dbinom(x, n, p),
     ylim=c(0, 0.1), frame=FALSE, axes=FALSE,
     pch=21, bg ="steelblue", ylab=NA)
axis(1); axis(2, tick = FALSE)
grid()

p = 0.75
plot(x, dbinom(x, n, p),
     ylim=c(0, 0.1), frame=FALSE, axes=FALSE,
     pch=21, bg ="steelblue", ylab=NA)
axis(1); axis(2, tick = FALSE)
grid()

