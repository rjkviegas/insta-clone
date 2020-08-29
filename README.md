# Insta Clone

Instagram clone built using Ruby on Rails.

<!-- This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover: -->

## Ruby version '2.7.1'
macOS: Verify version
```
> ruby -v
```
Windows: [Ruby Installer](http://railsinstaller.org/en)

Other OS: [ruby-lang.org](https://www.ruby-lang.org/en/documentation/installation/)

## System dependencies

- Node.js - '8.16.0'
[Installation instructions for Node.js](https://nodejs.org/en/download/)
Verify version
```
> node --version
```
- Yarn - '1.22.0'
[Installation instructions for Yarn](https://classic.yarnpkg.com/en/docs/install#mac-stable)
Verify version
```
> yarn -v
```
- Rails - '6.0.0'
```
> gem install rails
```
Verify version
```
> rails --version
```

## Configuration
First, clone this repository. Then:
```
> bundle install
```

## Database creation
```
> bin/rails db:create
```

## Database initialization
```
> bin/rails db:migrate
```

## How to run the test suite
```
> bundle exec rspec # Run the tests to ensure it works
```

## Deployment instructions
```
> bin/rails server # Start the server at localhost:3000
```

<!-- * Services (job queues, cache servers, search engines, etc.) -->
