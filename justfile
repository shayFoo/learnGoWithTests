test:
    go test

ga:
    git add .

gc message: ga
    git commit -m '{{message}}'

lint:
    golangci-lint run