test:
    make test

lint:
    make lint

ga:
    git add .

gc message: lint 
    git commit -m '{{message}}'

gac message: ga 
    just gc "{{message}}"

push: test
    git push