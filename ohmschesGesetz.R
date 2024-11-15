widerstand <- function(x,y) {
    if (y == 0){
        print("Division by zero")
    }
    return(x/y)
}
strom <- function(x,y) {
    if (y == 0){
        print("Division by zero")
    }
    return(x/y)
}
spannung <- function(x,y) {
    return(x*y)
}

choice_f <- function(s) {
    if (s == 'R') {
        num1 <- as.numeric(readline(prompt = "U = "))
        num2 <- as.numeric(readline(prompt= " I = "))
    }
    if (s == 'U') {
        num1 <- as.numeric(readline(prompt = "R = "))
        num2 <- as.numeric(readline(prompt= " I = "))
    }
    if (s == 'I') {
        num1 <- as.numeric(readline(prompt = "U = "))
        num2 <- as.numeric(readline(prompt= " R = "))
    }
    result = list("num1" = num1, "num2" = num2)
    return(result)
}
while (TRUE){
    choice <- readline(prompt = "What do you want to find: 'R, U , I' or q for exit ")
    if (choice == 'q') {
        print("EXIT")
        break
    }
    if (grepl('R', choice) | grepl('U', choice) | grepl('I', choice)) {
        n1_2<- choice_f(choice)
        n1 <- n1_2$num1
        n2 <- n1_2$num2
        if (choice == 'R') print(paste("U= ", n1, "I= ", n2, "R= ", widerstand(n1,n2)))
        if (choice == 'U') print(paste("R= ", n1, "I= ", n2, "U= ", spannung(n1,n2)))
        if (choice == 'I') print(paste("U= ", n1, "R= ", n2, "I= ", strom(n1,n2)))
    }
}
# print(widerstand(5,7))
# var1 <- readline(prompt = "Enter number x: ");
# x <- as.numeric(var1)