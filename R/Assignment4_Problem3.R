Fib <- function(n) {
  if (n < 3) {
    return(1)
  } else {
    return(Fib(n - 1) + Fib(n - 2))
  }
}

# Part B:
n <- 10  
result <- Fib(n)
cat("F", n, " =", result, "\n")

n <- 12 
result <- Fib(n)
cat("F", n, " =", result, "\n")
