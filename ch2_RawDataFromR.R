# Generate a numeric series from 1 to 30 and assign it to variable x
x <- seq(1, 30)

# Create copy of x as variable y 
y <- x

# Generate 30 uniform distributed random number each ranges between -1 to 1
noise <- runif(30, -1, 1)

# Create variable ywnoise as in Excel
ywnoise <- y + noise * 2

# Plot values of x and ywnoise without labels
plot(x, ywnoise, xlab = NA, ylab = NA)

# Combine columns x and ywnoise to create two column grid named linoise
linoise <- cbind(x, ywnoise)

# Save the variable linoise as a CSV file on the local disk
write.csv(linoise, file = "linoise_R.csv", row.names = FALSE)
