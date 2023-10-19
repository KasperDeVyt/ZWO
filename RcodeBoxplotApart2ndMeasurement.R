# Your data frame without the "Plants" column
Data_Frame <- data.frame(
  "A1" = c(0.8, 8.55, 7.55),
  "A2" = c(18.75, 24.8, 25.35 ),
  "A3" = c(39.5, 45.85, 42.05 ),
  "B1" = c(62.5, 68.05, 66.65 ),
  "B2" = c(30.1, 31.75, 31.55 ),
  "B3" = c(24.7, 31.4, 31.25),
  "C1" = c(58.3, 65.85, 62.6),
  "C2" = c(18.25, 22.2, 24.25),
  "C3" = c(52.45, 57.35, 57.8),
  "WT1" = c(6.1, 11.5, 11),
  "WT2" = c(4.45, 10.85, 8.88),
  "WT3" = c(3.65, 11.5, 9.4)
)
colnames(Data_Frame) <- gsub("x", "", colnames(Data_Frame))

# Create a boxplot with rotated X-axis labels
boxplot(Data_Frame, 
        main = "Measured DNA concentration",
        xlab = "Plants",
        ylab = "Concentration (ng/µL)",
        border = "black",
        names = c("A1", "A2", "A3", "B1", "B2", "B3", "C1", "C2", "C3", "WT1", "WT2", "WT3"),
        at = 1:12,      # Set the positions for the boxplots
        las = 2,        # Rotate X-axis labels 90 degrees
        xlim = c(0, 13) # Set the X-axis limit to accommodate rotated labels
)
