fmt:
	go fmt ./...
.PHONY:fmt

lint:
	golint ./...
.PHONY:lint

vet: fmt
	go vet ./...
.PHONY:vet

build: vet
	@go build -o bin/go-ecom-backend cmd/main.go

test:
	@go test -v ./...

run: build
	@./bin/go-ecom-backend

