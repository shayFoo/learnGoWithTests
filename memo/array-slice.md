# array slice in Golang

## Array
array includes length in the type

so [4]int cannot be a parameter to a function that expect [5]int

`cannot use numbers (variable of type [4]int) as [5]int value in argument to SumcompilerIncompatibleAssign`

```go
myArray := [3]int {1,2,3}

func iterate(slice []int) {
    doSomething()
}

iterate(myArray) // cannot use numbers (variable of type [3]int) as []int value in argument to Sum compilerIncompatibleAssign

iterate(myArray[:]) // this works, create slice 
```

## Slice
slice does not include length in the type
```go
mySlice := []int {1,2,3}

func iterate(array [3]int) {
    doSomething()
}

iterate(myslice) // cannot use numbers (variable of type []int) as [5]int value in argument to Sum compilerIncompatibleAssign
```
