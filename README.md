# Movie Review App

## Application specs:

- Ruby version: 3.0.1
- Rails version: 6.1.7
- Database: PostgreSQL
- Testing suite: Rspec

## Setting up locally

Setting up the application locally isn't too hard. Just follow the steps below:

- **Install requirements:** [RVM](https://rvm.io/rvm/install), [PostgreSQL](http://postgresapp.com)
- **Setup database.yml:** `cp config/database.yml.sample config/database.yml`
- **Setup DB:** `rake db:setup`
- **Install gems:** `bundle install`

## Make changes

- Open the project in Sublime Text: `subl .`
- Change what you want
- Make a commit

## Run server

```
    rails s
```


### Instructions to run rake task for import ###

1) For Movie
```
    rake import:csv_model_import[lib/assets/movies.csv,Movie]
```

2) For Review
```
    rake import:csv_model_import[lib/assets/reviews.csv,Review]
```

### Instructions to run rspec ###

```
    rspec
```