#!/bin/bash

function got {
    echo "Running: go test with cover"
    go test -cover ./... -coverprofile=cover.out -covermode=count
    go tool cover -html=cover.out -o=cover.html
}

function gol {
    echo "Running: golangci-lint run"
    golangci-lint run
}

function govul {
    echo "Running: govulncheck"
    govulncheck ./...
}

function gff {
    echo "Running: grepgin fmt.Print"
    grep -r "fmt\.P" *
}

function gpp {
    got && echo "\n" && 
        gol && echo "\n" && 
        govul && echo "\n" && 
        gff
}

function gmk {
    mockery --dir ./internal/core/ports --output ./internal/core/ports/mocks/ --all
}


