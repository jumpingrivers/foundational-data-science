par(mar=c(2,2,2,1), mgp=c(1,0.4,0), tck=-.01, cex.axis=0.9, las=1, mfrow=c(1, 1))
x_t22 = c(0.1, 0.1, 0.2, 0.4, 0.4, 0.8, 0.8, 0.8, 
          0.9, 0.9, 1.0, 1.4, 1.6, 2.0, 2.4, 3.5) 
boxplot(x_t22, frame=FALSE)
text(1.38, 0.1, "Lower whisker: 0.1")
text(1.38, 0.4, "Lower quartile: 0.4")
text(1.38, 0.85, "Median: 0.85")
text(1.38, 1.55, "Upper quartile: 1.55")
text(1.38, 2.4, "Upper whisker: 2.4")
text(1.38, 3.5, "Outlier: 3.5")

text(0.62, 0.4, "Lower hinge")
text(0.62, 0.86, "Box")
text(0.62, 1.52, "Upper hinge")
