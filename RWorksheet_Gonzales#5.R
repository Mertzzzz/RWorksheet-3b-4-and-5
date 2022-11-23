---
title: "Worksheet5 in R"
author: "Mamerto F. Gonzales Jr."
date: "`r Sys.Date()`"
output: pdf_document
---
  
  #Worksheet-5 in R
  
  Worksheet for R Programming
Instructions:
  • Use RStudio or the RStudio Cloud accomplish this worksheet.
• Save the R script as RWorksheet_lastname#5.R.
• Create your own GitHub repository and push the R script as well as this pdf
worksheet to your own repo. Do not forget to comment your Git repo
Accomplish this worksheet by answering the questions being asked and writing the code
manually.

1. The table shows the enrollment of BS in Computer Science, SY 2010-2011.
Course Year 2019 - 2020
1st 80
2nd 75
3rd 70
4th 60

a. Plot the data using a bar graph. Write the codes and copy the result.

```{R}
Course <- c(80,75,70,60)
CoursePlot <- barplot(Course)
```

b. Using the same table, label the barchart with
Title = ” Enrollment of BS Computer Science
horizontal axis = “Curriculum Year” and
vertical axis = “number of students”

```{R}
CourseYear <- c("1st","2nd","3rd","4th")
CoursePlot2 <- barplot(Course,
                       main = "Enrollment of BS Computer Science",
                       xlab = "Curriculum Year", names.arg = CourseYear)
CoursePlot2
```

2. The monthly income of De Jesus family was spent on the following:
  60% on Food, 10% on electricity, 5% for savings, and
25% for other miscellaneous expenses.

a. Create a table for the above scenario.

```{R}
Expenses <- c(60, 10, 5, 25)
ExpensePlot <- barplot (Expenses, names.arg = c("Food", "Electricity", "Savings", "Miscellaneous"))
```

Write the codes and its result.

```{R}
ExpensePlot
```

b. Plot the data using a pie chart. Add labels, colors and legend.
Write the codes and its result.

```{R}
pie(Expenses)
ExpensePie <- pie(Expenses,
                  col = rainbow(length(Expenses)),
                  labels = c(60,10,5,25))
ExpenseLabels <- round(Expenses/sum(Expenses) * 100, 1)
ExpenseLabels <- paste(ExpenseLabels, "%",sep = "")
pie(Expenses, main = "Expenses", col=rainbow (length(Expenses)), labels = ExpenseLabels, cex=0.8)
legend(1, c("Food", "Electricity", "Savings", "Miscllaneous"),
       cex = 0.8,fill = rainbow((length(Expenses))))
```

3. Open the mtcars dataset.

```{R}
mtcars
```

a. Create a simple histogram specifically for mpg (miles per gallon) variable.
Use $ to select the mpg only. Write the codes and its result.

```{R}
Carrrrs <- hist(mtcars$mpg, xlab="Miles Per Gallon",
                main = "Histogram of mpg")
```

b. Colored histogram with different number of bins.
hist(mtcars$mpg, breaks=12, col="red")
Note: breaks= controls the number of bins

```{R}
Carrrrs <- hist(mtcars$mpg, breaks=12, col="blue", xlab="Miles Per Gallon",
                main = "Histogram of mpg")
```

c. Add a Normal Curve
x <- mtcars$mpg
h<-hist(x, breaks=10, col="red", xlab="Miles Per Gallon",
        main="Histogram with Normal Curve")
xfit<-seq(min(x),max(x),length=40)
yfit<-dnorm(xfit,mean=mean(x),sd=sd(x))
yfit <- yfit*diff(h$mids[1:2])*length(x)
lines(xfit, yfit, col="blue", lwd=2)
Copy the result.

```{R}
x <- mtcars$mpg
h <-hist(x, breaks=10, col="red", xlab="Miles Per Gallon",
         main="Histogram with Normal Curve")
xfit<-seq(min(x),max(x),length=40)
yfit<-dnorm(xfit,mean=mean(x),sd=sd(x))
yfit <- yfit*diff(h$mids[1:2])*length(x)
lines(xfit, yfit, col="blue", lwd=2)
```

4. Open the iris dataset. Create a subset for each species.
a. Write the codes and its result.

```{R}
iris
set <- subset(iris, Species == "setosa")
ver <- subset(iris, Species == "versicolor")
vir <- subset(iris, Species == "virginica")
```

b. Get the mean for every characteristics of each species using colMeans().
Write the codes and its result.
Example: setosa <- colMeans(setosa[sapply(setosaDF,is.numeric)])

```{R}
set <- subset(iris, Species == "setosa")
setosa <- colMeans(set[sapply(set,is.numeric)])
setosa

ver <- subset(iris, Species == "versicolor")
versicolor <- colMeans(ver[sapply(ver,is.numeric)])
versicolor

vir <- subset(iris, Species == "virginica")
virginica <- colMeans(vir[sapply(vir,is.numeric)])
virginica
```

c. Combine all species by using rbind()
The table should be look like this:
  
  Sepal.Length Sepal.Width Petal.Length Petal.Width
setosa
versicolor
virginia

```{R}
IrisBound <- rbind(setosa,
                   versicolor,
                   virginica)
IrisBound
```

d. From the data in 4-c: Create the barplot().
Write the codes and its result.
The barplot should be like this.
Figure 1: Iris Data using Barplot

```{R}
barplot(IrisBound, beside = TRUE,
        main = "Iris Mean",
        xlab = "Characteristics",
        ylab = "Mean Scores",
        col = c("red","green","blue"))
```
