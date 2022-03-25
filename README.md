# README

This README would normally document whatever steps are necessary to get the
application up and running.


## Build
We build the application running this command
```bash
 docker-compose build
```

## Launching server
We launch the server running the following command 
```bash
docker-compose up
```

## Running test
We have some snapshots tests for the graphql schema so we need sometimes to updates thoses snapshots
To simply run tests suites:
```bash
  docker-compose run web bundle exec rspec
```
if you want to update the snapshots you'll have to rebuild the app before
