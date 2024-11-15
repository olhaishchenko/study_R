# x <- letters[4:10] 

# for(i in x){ 
# print(i) 
# }
# Defining matrix 
m <- matrix(2:15, 2) 
print(m)
  
for (r in seq(nrow(m))) { 
  for (c in seq(ncol(m))) { 
    print(m[r, c]) 
  } 
}