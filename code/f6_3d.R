library(scatterplot3d)
m = lm(Calories ~ Fat + Carb, data = starbucks)
d1 = starbucks[residuals(m) < 0, ]
d2 = starbucks[residuals(m) > 0, ]
s3d = scatterplot3d(d2$Fat, d2$Carb,d2$Calories, 
                    angle=55, scale.y=0.7, pch=16,
                    color="firebrick",
                    xlim=c(0, 40), ylim=c(0, 70), zlim=c(0, 700),
                    xlab="Fat", ylab="Carb", zlab="Calories")


s3d$points3d(d1$Fat, d1$Carb, d1$Calories, col="steelblue", pch=16)
s3d$plane3d(m, lty.box = "solid")