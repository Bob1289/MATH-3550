generateStrings <- function(n) {
  # Checks 1 2 and 3 and ends with st nd and rd and everything else is th
  result <- paste0(n, ifelse(n == 1, "st",
                             ifelse(n == 2, "nd",
                                    ifelse(n == 3, "rd", "th")))
  )
  return(result)
}

strings <- generateStrings(1:10)
print(strings)