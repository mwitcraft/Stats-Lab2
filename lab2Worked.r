# Task 2
epa=read.csv("EPAGAS.csv")
head(epa)

# Task 3
mpg = epa$MPG # MPG vector
z=(mpg - mean(mpg))/sd(mpg)

var(z) # Verifies z bar 
mean(z) # Verifies s^2 of z

# Possible Outliers are those between 2 and 3 standard deviations from the mean

# Outliers are those more than 3 standard deviations from the mean


