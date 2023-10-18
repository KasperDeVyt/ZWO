# Your data frame without the "Plants" column					
Data_Frame <- data.frame(					
  "81B" = c(0.8, 18.75, 39.5),					
  "14-16" = c(62.5, 30.1, 24.7),					
  "16-2a" = c(58.3, 18.25, 52.45),					
  "WT" = c(6.1, 4.45, 3.65)					
)					
colnames(Data_Frame) <- gsub("x", "", colnames(Data_Frame))					
# Create a boxplot					
boxplot(Data_Frame, 					
        main = "Measured DNA concentration",					
        xlab = "Plants",					
        ylab = "Concentration (ng/µL)",					
        border = "black",					
        names = c("81B", "14-16", "16-2a", "WT"))					

