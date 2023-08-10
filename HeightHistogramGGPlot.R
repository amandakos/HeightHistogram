# Always load your library from the library FIRST! 

library(ggplot2)

# Create a vector of heights

height <- c(171, 192, 183, 177, 154, 176)

# Format vector as a data frame.

height_df <- data.frame(height)

# Now create a histogram from your data frame.

h <- ggplot(height_df, aes(x = height))
h + geom_histogram(binwidth = 10)

#Let's add some labels!

h + geom_histogram(binwidth = 10) +
  ggtitle("Histogram of Heights") +
  xlab("Height (in cm)")

#To create color on the outlines of the bins and inside the bins:

h + geom_histogram(binwidth = 10, fill = "goldenrod", color = "deepskyblue4") +
  ggtitle("Histogram of Heights") + xlab("Height (in cm)")

#This creates a pretty graph!

#Relative Frequency!

h + geom_histogram(binwidth = 10, aes(y = ..count../sum(..count..))) +
  ggtitle("Histogram of Heights") + xlab("Height (in cm)") +
  ylab("Relative frequency")

# Another way to code the basic graph with relative frequency.

h + geom_histogram (binwidth = 10, aes (y = after_stat(count))) +
  ggtitle("Histogram of Heights") + xlab("Height (in cm)") +
  ylab("Relative frequency")


