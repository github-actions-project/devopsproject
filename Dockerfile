# Stage 1: Build the Go binary
FROM golang:1.20-alpine AS builder

# Set the working directory inside the container
WORKDIR /app

# Copy the go.mod and go.sum files
COPY go.mod go.sum ./
RUN go mod download

# Copy the rest of the application code
COPY . .

# Build the Go application
RUN go build -o guestbook main.go

# Stage 2: Create a minimal image with the built binary
FROM alpine:latest

# Create the application directory
WORKDIR /app

# Copy the built binary from the builder stage
COPY --from=builder /app/guestbook /app/guestbook

# Copy static files (HTML, JS, CSS)
COPY public /app/public

# Set the command to run the guestbook application
CMD ["./guestbook"]

# Expose port 3001
EXPOSE 3001
