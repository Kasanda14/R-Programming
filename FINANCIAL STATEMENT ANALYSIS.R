#Data
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

#Solution
#Calculate Profit As The Differences Between Revenue And Expenses

Profit <- revenue - expenses
Profit

#Calculate Tax As 30% Of Profit And Round To 2 Decimal Points
Tax <- round(Profit * 0.30,2)
Tax

#Calculate Profit Remaining After Tax Is Deducted
Profit.after.tax <- Profit - Tax
Profit.after.tax

#Calculate The Profit Margin As Profit After Tax Over Revenue
#Round To 2 Decimal Points, Then Multiply By 100 To Get %

Profit.margin <- round(Profit.after.tax / revenue,2)*100
Profit.margin

#Calculate The Mean Profit After Tax For The 12 Months
Mean.Profit <- mean(Profit.after.tax)
Mean.Profit

#Find The Months With Above-Mean Profit After Tax
Good.month <- Profit.after.tax > Mean.Profit
Good.month
Profit.after.tax

#Bad Months Are The Opposite Of Good Months !
Bad.month <- !Good.month
Bad.month
Profit.after.tax

#The Best Month Is Where Profit After Tax Was Equal To The Maximum
Best.month <- Profit.after.tax == max(Profit.after.tax)
Best.month

#The Worst Month Is Where Profit After Tax Was Equal To The Minimum
worst.month <- Profit.after.tax== min(Profit.after.tax)
worst.month

#Convert All Calculations To Units Of One Thousand Dollars
revenue.1000
expenses.1000 <- round(expenses/1000)
Profit.1000 <- round(Profit/1000)
Profit.after.tax.1000 <- round(Profit.after.tax/1000)

#Print Results
revenue.1000
expenses.1000
Profit.1000
Profit.after.tax.1000
Profit.margin
Good.month
Bad.month
Best.month
worst.month

M <- rbind(
  revenue.1000,
  expenses.1000,
  Profit.1000,
  Profit.after.tax.1000,
  Profit.margin,
  Good.month,
  Bad.month,
  Best.month,
  worst.month
)

#Print The Matrix
M
