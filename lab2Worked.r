# Task 1
getwd()

# Task 2
epa=read.csv("EPAGAS.csv")
head(epa)

# Task 3
mpg = epa$MPG # MPG vector
z=(mpg - mean(mpg))/sd(mpg)

var(z) # Verifies z bar 
mean(z) # Verifies s^2 of z

# Possible Outliers are those between 2 and 3 standard deviations from the mean
mpg[abs(z) >= 2 & abs(z) <= 3]

# Outliers are those more than 3 standard deviations from the mean
mpg[abs(z) > 3]

# Using lattice package construct dotplot with colors Red=outlier, Blue=possible outlier
library(lattice)

colorOutliers = ifelse(abs(z) > 3, "Red", ifelse(abs(z) >= 2 & abs(z) <= 3, "Blue", "Black"))  

dotplot(mpg, col=colorOutliers)

# Task 4
# Boxplot 
with(epa, boxplot(MPG, ylab = "MPG", col = "green3", horizontal = TRUE))
title("MPG Boxplot")

# Chebyshev's theorem states that 3/4 of the data must lie within 2 standard deviations of the mean
3/4
length(mpg[abs(z) < 2])/length(mpg) #Actual amount of data within 2 sd of the mean
# Yes Chebyshev agrees with this data

# According to the Empirical Rule, 95% of the data must lie within 2 sd of the mean
length(mpg[abs(z) < 2])/length(mpg)
# The Empirical Rule corresponds very well with this data
# The Empirical Rule is valid because over 95% of the data lies within 2 sd of the mean

