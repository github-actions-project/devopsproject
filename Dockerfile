FROM golang as builder
RUN go get github.com/codegangsta/negroni
RUN go get github.com/gorilla/mux github.com/xyproto/simpleredis
COPY go.mod .
RUN go mod download

FROM busybox:ubuntu-14.04

COPY --from=builder /go/main /helm/guestbook

#ADD public/index.html /app/public/index.html
#ADD public/script.js /app/public/script.js
#ADD public/style.css /app/public/style.css
#ADD public/jquery.min.js /app/public/jquery.min.js

WORKDIR /helm
CMD ["./guestbook"]
EXPOSE 3001