# Chat App for Fonix by Conner McCabe

## Overview
This app intends to provide user registration, login and chat functionality making the use of web sockets. The app should also provide a weekly mailer function that provides the total number of messages sent in the last week and the number of messages sent since the users last message.

## Set up
1. Bundle install
```
  bundle install
```

2. Set up database (given postgresql is set up and you have entered correct details into config/database.yml)
```
  rake db:create db:migrate
```

3. Seed the database with some messages and users if wanted
```
  rake db:seed
```

## How to run
Simply run:
```
  bin/dev
```

## Running the tests
```
  bundle exec rspec
```
