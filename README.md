# ActsAsFulltextable

This gem is based on the old Rails 2 plugin made by wonsys (https://github.com/wonsys/acts_as_fulltextable). 

It allows you to create an auxiliary table to be used for full-text searches.
It behaves like a polymorphic association, so it can be used with any
ActiveRecord model.


It has been tested on Rails 3.1+. Ruby 1.9.1+.

## Installation

Add this line to your application's Gemfile:

    gem 'acts_as_fulltextable', '~> 0.1.1'

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install acts_as_fulltextable


## Usage

Create a migration for the models that you want to make searches. 

    $ rails generate fulltext_rows model1 model2 model3 ....
    $ rake db:migrate


Add acts_as_fulltextable in any model, followed by the list of searchable fields.

i.e. 
```ruby 

class Person < ActiveRecord::Base
  attr_accessible :age, :description, :name

  acts_as_fulltextable :description, :name
end

```

You can either run a search on a single model:
  Model.find_fulltext('query to run', :limit => 10, :offset => 0)

Or you can run it on more models at once:
  FulltextRow.search('query to run', :only => [:only, :this, :models], :limit => 10, :offset => 0)

## Warning

Should you add acts_as_fulltextable to a new model after the initial migration was run,
you should execute the following piece of code (a migration or script/console are both fine):
  
```ruby 

  NewModel.find(:all).each {|i| i.create_fulltext_record}

```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## About the author

TopTier labs. http://www.toptierlabs.com

## Our blog

http://www.toptierlabs.com/blog
