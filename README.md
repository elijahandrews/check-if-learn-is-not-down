check-if-learn-is-not-down
==========================

On Tuesday, January 29th 2013, https://learn.uwaterloo.ca went down. Without our beloved Learn, panic struck the hearts of all Univeristy of Waterloo students. This Ruby script checks if Learn is still down every 5 minutes. If it finds Learn not down, it ensures near instantaneous rejoice by sending you an email.

EDIT: As of February 1st, Learn is back. However, this tool may once again be useful if Learn goes down again.

## Setup
Make sure you have [Ruby](http://www.ruby-lang.org/en/downloads/) and [nokogiri](http://nokogiri.org/tutorials/installing_nokogiri.html)

`git clone git@github.com:elijahandrews/check-if-learn-is-not-down.git`

`cd check-if-learn-is-not-down`

`gem install bundler`

`bundle install`

## Usage

`ruby check-if-learn-is-not-down.rb`

Enter in your gmail username

Enter in your gmail password (it's not stored anywhere!)

When Learn comes back you will receive an email at the address
you entered.
