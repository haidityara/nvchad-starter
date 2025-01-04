package main

import (
	"fmt"
)

type User struct {
	ID   string `json:"id"`
	name string `json:"name"`
}

// main function 
func main() {
	a := 10

	if a > 11 {
		fmt.Println("seomething")
	}
	fmt.Println("something usefull")
}
