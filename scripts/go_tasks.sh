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
    echo "Running: grep find fmt.Print"
    grep -r "fmt\.P" *
    grep -r "log\.P" *
}

function gfe {
    echo "Running: grep find errors.New"
    grep -r "errors\.New" *
}

function gpp {
    got && echo "\n" && 
        gol && echo "\n" && 
        govul && echo "\n" && 
        gff && echo "\n" && 
        gfe
}

function gmk {
    mockery --dir ./internal/core/ports --output ./internal/core/ports/mocks/ --all
}


