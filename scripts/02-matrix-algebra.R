##################################################
### Enter a matrix
###   1 -2  3
###   4 -5 -6
###   7  8  9
###   0  0 10
##################################################

X = matrix(data = c(1, 4, 7, 0, -2, -5, 8, 0, 3, -6, 9, 10), nrow = 4)
X

# Enter elements by rows
X = matrix(data = c(1, -2,  3, 4, -5, -6, 7,  8,  9, 0,  0, 10), 
           byrow = TRUE, nrow = 4)
X

Y = matrix(data = c(-5, 1, 3, 2, 2, 6, 7, 3, -4),
           byrow = TRUE, nrow = 3)

Y



##################################################
### Find dimensions of matrix
##################################################

dim(X)
dim(Y)



##################################################
### Find dimensions of matrix
##################################################

t(X)
t(Y)



##################################################
### Find determinant of matrix
##################################################

det(Y)
det(X)



##################################################
### Find diagonal of a square matrix
##################################################

diag(Y)



##################################################
### Find trace of a square matrix
### Trace ois the sum of diagonal elements
##################################################

sum(diag(Y))



##################################################
### Create an identity matrix
### The argument is the number of rows and columns
##################################################

diag(4)



##################################################
### Matrix addition
##################################################

A = matrix(data = c(1, 2,  3, 4, 5,  6), byrow = TRUE, nrow = 2)
B = matrix(data = c(-5, 1, 2, 3, 0, 4), byrow = TRUE, nrow = 2)

A + B



##################################################
### Scalar multiplication
##################################################

3 * B



##################################################
### Elementwise multiplication
##################################################

A * B



##################################################
### Matrix multiplication
##################################################

B %*% Y
Y %*% B


B %*% diag(3)



##################################################
### Vectors
##################################################

a = c(2, 0, 1, 3)
a

b = matrix(data = c(2, 0, 1, 3), ncol = 1)
b

dim(a)
dim(b)



##################################################
### Dot product (inner product)
##################################################

a = c(2, 0, 1, 3)
b = c(-1, 6, 0, 9)

sum(a * b)

t(a) %*% b



##################################################
### Matrix inverse
##################################################

D = matrix(c(2, 5, 1, 3), byrow = TRUE, nrow = 2)
D

solve(D)

# Inverse using QR decomposition
qr.solve(D)

# Check singularity
det(D)

