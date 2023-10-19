# Your data frame without the "Plants" column					
Data_Frame <- data.frame(					
  "A" = c(0.8, 18.75, 39.5, 8.55, 7.55, 24.8, 25.35, 45.85, 42.05),					
  "B" = c(62.5, 30.1, 24.7, 68.05, 66.65, 31.75, 31.55, 31.4, 31.25),					
  "C" = c(58.3, 18.25, 52.45, 65.85, 62.6, 22.2, 24.25, 57.35, 57.8),					
  "WT" = c(6.1, 4.45, 3.65, 11.5, 11, 10.85, 8.88, 11.5, 9.4)					
)					
colnames(Data_Frame) <- gsub("x", "", colnames(Data_Frame))					
# Create a boxplot					
boxplot(Data_Frame, 					
        main = "Measured DNA concentration",					
        xlab = "Plants",					
        ylab = "Concentration (ng/µL)",					
        border = "black",					
        names = c("A", "B", "C", "WT"))	
