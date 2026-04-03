test:
    go test

ga:
    git add .

gc message: 
    git commit -m {{message}}

lint:
    golangci-lint run