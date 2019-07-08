package main

import (
	"fmt"
	"log"
	"net/http"
	"time"
)

func main() {
	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		log.Print(time.Now())
		fmt.Fprint(w, "hi4")
	})

	log.Println("listening on :8181")
	if err := http.ListenAndServe(":8181", nil); err != nil {
		log.Fatal(err)
	}
}
