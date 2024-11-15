var1 <- readline(prompt = "Enter number x: ");
x <- as.numeric(var1)
if (x <= 0) {
    f <- exp(x)
} else if (x > 0 & x <= 3){
    f <- x * x + 1
} else {
    f <- 2 * x + 4
}
print(f)

