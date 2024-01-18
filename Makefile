BUILD_DIR := bin
BINARY := $(BUILD_DIR)/paxos
CMD_DIR := cmd/app
MAIN_FILE := $(CMD_DIR)/main.go

.PHONY: build run test

build:
	@mkdir -p $(BUILD_DIR)
	@go build -o $(BINARY) $(MAIN_FILE)

run: build
	@$(BINARY)

test:
	@go test -v ./...
