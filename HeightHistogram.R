#Always load your package from the library FIRST! 

library(ggplot2)

height <- c(171, 192, 183, 177, 154, 176)

#Create a data frame from your vector.

height_df <- data.frame(height)

#Now create a histogram from your data frame.

h <- ggplot(height_df, aes(x = height))
h + geom_histogram(binwidth = 10)

#Let's add some labels and color.

h + geom_histogram(binwidth = 10, aes(y = ..count../sum(..count..)),
                   fill = "goldenrod", color = "deepskyblue4") +
  ggtitle("Histogram of Heights") + xlab("Height (in cm)") +
  ylab("Relative frequency")

#This creates a pretty graph!

#This seems to be the new replacement for the "...count..." error.

h + geom_histogram (binwidth = 10, aes (y = after_stat(count)),
                    fill = "goldenrod", color = "deepskyblue4") +
  ggtitle("Histogram of Heights") + xlab("Height (in cm)") +
  ylab("Relative frequency")


