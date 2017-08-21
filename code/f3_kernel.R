par(mar=c(2,2,2,1), mgp=c(1,0.4,0), tck=-.01, cex.axis=0.9, las=1, mfrow=c(2, 2))
z = c(-2, -1, 2)
x = seq(-5, 5, 0.01)

plot(0, 0, xlim=c(-5, 5), ylim=c(0, 0.8), 
     pch=NA, ylab=NA, xlab=NA, frame.plot = FALSE, 
     axes=FALSE)
for(i in 1:length(z)) {
  points(z[i], 0, pch="X", col="steelblue")
}
abline(h=0, col="grey80")
axis(2, tick = FALSE)
axis(1, tick = FALSE)
text(5, 0.8, "(a)")


## Now we combine the kernels,
x_total = numeric(length(x))
for(i in 1:length(x_total)) {
  for(j in 1:length(z)) {
    x_total[i] = x_total[i] + 
      dnorm(x[i], z[j], sd=1)
  }
}

plot(0, 0, xlim=c(-5, 5), ylim=c(0, 0.8), 
     pch=NA, ylab=NA, xlab=NA, frame.plot = FALSE, 
     axes=FALSE)
for(i in 1:length(z)) {
  points(z[i], 0, pch="X", col="steelblue")
}
abline(h=0, col="grey80")
axis(2, tick = FALSE)
axis(1, tick = FALSE)
text(5, 0.8, "(c)")

lines(x, dnorm(x, z[1], sd=1), col="forestgreen")
lines(x, dnorm(x, z[2], sd=1), col="forestgreen")
lines(x, dnorm(x, z[3], sd=1), col="forestgreen")





plot(0, 0, xlim=c(-5, 5), ylim=c(0, 0.8), 
     pch=NA, ylab=NA, xlab=NA, frame.plot = FALSE, 
     axes=FALSE)
for(i in 1:length(z)) {
  points(z[i], 0, pch="X", col="steelblue")
}
abline(h=0, col="grey80")
axis(2, tick = FALSE)
axis(1, tick = FALSE)
text(5, 0.8, "(c)")
lines(x, x_total, col="forestgreen", lty=2)

## (d)
plot(x, x_total/3, 
     xlim=c(-5, 5), ylim=c(0, 0.8), 
     pch=NA, ylab=NA, xlab=NA, frame.plot = FALSE, 
     axes=FALSE, type="l", col="forestgreen")
abline(h=0, col="grey80")
axis(2, tick = FALSE)
axis(1, tick = FALSE)
text(5, 0.8, "(d)")
lines(x, x_total, col="forestgreen", lty=2)