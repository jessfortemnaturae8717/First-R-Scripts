
# Locate file .csv
(file.choose())

# Install ggplot2
install.packages("ggplot2")
library(ggplot2)

# Read in the data .csv file
mydata <- read.csv("C:\\Users\\Owner\\Desktop\\diamonds.csv")
data.frame(mydata)

# Input ggplot2 formula for visual: aes function (aesthetics) & geom_piont (compare one continous and one categorical vairable or two categorical variables, but geom_jitter, geom_count, or geom_bin2d is more appropriate)
ggplot(data=mydata, aes(x=carat, y=price)) + geom_point()

# Add in clarity now
ggplot(data=mydata, aes(x=carat, y=price, colour=clarity)) + geom_point()

# Make some improvements with (unclutter) more clear with alpha
ggplot(data=mydata, aes(x=carat, y=price, colour=clarity)) + geom_point(alpha=0.1)

# Filter everything to the right (2.5 carats)
ggplot(data=mydata[mydata$carat<2.5,], aes(x=carat, y=price, colour=clarity)) + geom_point(alpha=0.1)

# Finally add in "smoothness to the data"
ggplot(data=mydata[mydata$carat<2.5,], aes(x=carat, y=price, colour=clarity)) + geom_point(alpha=0.1) + geom_smooth()
