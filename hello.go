package main

import (
  "fmt"
  "log"
  "net/http"
)

func handler(rw http.ResponseWriter, hr *http.Request) {
  fmt.Fprintln(rw, "<h1>Hello Go")
}

func main() {
  http.HandleFunc("/", handler)
  log.Fatal(http.ListenAndServe(":8080", nil))
}
