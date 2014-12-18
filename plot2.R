## Calculate total emissions by year for Baltimore city

Baltimore <- NEI[NEI$fips == "24510", ]

totalByYear <- tapply(Baltimore$Emissions, Baltimore$year, sum)

## Create plot
plot(totalByYear, x = rownames(totalByYear), type = "n", axes = FALSE, 
     ylab = expression("Total PM"[2.5] * " Emission (in tons)"), xlab = "Year", 
     main = expression("Total PM"[2.5] * " Emission in Baltimore (1999 - 2008)")
     )

points(totalByYear, x = rownames(totalByYear), pch = 16, col = "red")

lines(totalByYear, x = rownames(totalByYear), col = "blue")

axis(2)
axis(side = 1, at = seq(1999, 2008, by = 3))
box()
