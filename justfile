default: lint test

test:
    go test ./... -v

test-with-report:
    #!/usr/bin/env bash
    set -euxo pipefail
    mkdir -p report
    go test -coverprofile=./report/coverage.out ./...
    go tool cover -html=./report/coverage.out -o ./report/coverage.html

lint:
    golangci-lint run

fmt:
    go fmt

fix:
    go fix ./...

add *files: fmt
    #!/usr/bin/env bash
    set -euxo pipefail
    if [ -z "{{ files }}" ]; then 
        git add .; 
    else 
        git add {{ files }}; 
    fi

commit message: lint
    git commit -m '{{ message }}'

commit-all message: add
    just commit "{{ message }}"

push: test
    git push
