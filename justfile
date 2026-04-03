default: lint test
test:
    make test

lint:
    make lint

add *files:
    if [ -z "{{files}}" ]; then git add .; else git add {{files}}; fi

commit message: lint 
    git commit -m '{{message}}'

commit-all message: add
    just commit "{{message}}"

push: test
    git push