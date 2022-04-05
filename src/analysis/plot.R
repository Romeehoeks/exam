##############
### PLOT  ####
##############

# convert the `date` column into date format.
df_pivot$date <- as.Date(df_pivot$date)

read.csv(file = '../../gen/analysis/input/df_pivot.csv')
pdf("../../gen/analysis/output/plot.pdf")
plot(x = df_pivot$date, 
     y = df_pivot$`Spandau Mitte`, 
     col = "red", 
     type = "l", 
     xlab = "",
     ylab = "Total number of reviews", 
     main = "Effect of COVID-19 pandemic\non Airbnb review count")

lines(df_pivot$date, df_pivot$`Kreutzberg`, col="blue")
lines(df_pivot$date, df_pivot$`Westend`, col="green")

legend("topleft", c("Spandau Mitte", "Kreutzberg", "Westend"), fill=c("red", "blue", "green"))
dev.off()
