
startingX = 615
deltaX = 90
numberOfPens = 8
maxX := startingX + (deltaX*numberOfPens)
X := startingX


^![::LeftScroll(X, deltaX, maxX, startingX)
^!]::RightScroll(X, deltaX, maxX, startingX)

LeftScroll(ByRef X, deltaX, maxX, startingX){
try {   
    X := X - deltaX
    IF(X < startingX){
        X := maxX
    }   
    Click, left, %X%, 185     
   
} catch e {
    MsgBox %e%
}}

RightScroll(ByRef X, deltaX, maxX, startingX){
try {   
    X := X + deltaX
    IF(X > maxX){
        X := startingX
    }   
    Click, left, %X%, 185     
   
} catch e {
    MsgBox %e%
}}

