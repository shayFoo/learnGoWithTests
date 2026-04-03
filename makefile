.PHONY: test lint

test:
	go test ./... -v

test-with-report:
	mkdir -p report
	go test -coverprofile=./report/coverage.out ./...
	go tool cover -html=./report/coverage.out -o ./report/coverage.html

lint:
	golangci-lint run