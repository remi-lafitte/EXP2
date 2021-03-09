library(tidyverse)
vv<-c(0.3, 1, -1)
lm<- c(-0.2, -1, 1)
plot(x = c(1:3), y = vv,
     ylim = c(-2, 2),
     xaxt = "n", ylab = "Angle", xlab = "Sound",
     bg = alpha("darkgreen", 0.6), pch = 21) # VV

points(x = c(1:3), y = lm,
       bg = alpha("tomato", 0.7), pch = 21) #LM
lines(x = c(1:3), y = vv,
      col = "darkgreen", lty = "dotted")
lines(x = c(1:3), y = lm,
       col = "tomato", lty = "dotted") #LM
axis(side = 1,at = c(1 ,2 ,3),labels = c("Control", "Left", "Right"))
abline(h = 0, col = "grey", lty = "dotted")
legend("topright",# Add legend to plot
       legend = c("VV", "Bisection"),
       pt.bg = c("darkgreen", "tomato"),
       cex = 0.7, pch=21)
