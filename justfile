test:
    go test

ga:
    git add .

gc message: 
    git commit -m '{{message}}'

gam message: ga 
    just gc "{{message}}"

lint:
    golangci-lint run