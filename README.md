Learn Test Driven Development with Ruby on Rails
===================================================

## Setup
 1. Follow [these instructions](http://www.startprogrammingnowbook.com/book/setup) to set up Ruby on Rails
 2. Clone this repo
   1. `mkdir ~/workspace`
   2. `git clone git@github.com:fsproru/tdd_with_ror ~/workspace/tdd_with_ror`
 3. Setup the project
   1. `cd ~/workspace/tdd_with_ror`
   2. `gem install bundler --version=1.7.9`
   3. `bundle install`
   4. `bundle exec rake db:create db:migrate`
 4. Run tests and follow instructions
   1. `bundle exec rspec`
 5. Enjoy!
