package main

import (
  f "fmt"
  "UPS/pkg/middle"
  "UPS/pkg/outer"
)

func main() {
  f.Println("Hello from main")
  middle.Middle()
  outer.Outer()

}
