# D3Maps Ruby Gem

D3Maps Ruby Gem is a gem that simplifies the process of creating maps of the United States and assigning data values to each location.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'd3_maps', path: "../d3_maps"
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install d3_maps

In app/assets/javascripts/application.js, include
```ruby
//= require d3_maps
```
## Usage

Create the database needed to store the information for your project. The database consist of a States table with information on number, code, and name. Number must be included. Code and name are optional values to display.

```ruby
rails generate model States number:integer code:string name:string
rake db:migrate
```

Seed your database.
```ruby
rake db:seed
```
Or reset your database
```ruby
rake db:reset
```

Host the data as a json file
```ruby
rails generate controller States index
```
Replace the States/states_controller.rb and states/index.html.erb files with the d3maps files.

Display the view/index.html.erb file on the page where the map is suppose to be
