
# Download "frmgham2.csv" from the class google drive in your working directory
# Before running this command

fr_dat <- read.csv("frmgham2.csv",sep=",")

# Sample linear regression model
m <- lm(SYSBP~TOTCHOL, data=fr_dat)
summary(m)
plot(fr_dat$TOTCHOL,fr_dat$SYSBP)
abline(m)

# Sample multiple linear regression model
mul <- lm(SYSBP~TOTCHOL+GLUCOSE+HEARTRTE+DIABETES, data=fr_dat)
summary(mul)