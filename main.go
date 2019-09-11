package main

import (
	"log"
	"net/http"
)

func main() {
	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		cn, ok := w.(http.CloseNotifier)
		if !ok {
			log.Fatal("don't support CloseNotifier")
		}
		<-cn.CloseNotify()
		log.Printf("CloseNotifier is fired!")
	})
	http.ListenAndServe(":8080", nil)
}
