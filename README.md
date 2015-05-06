# RSpec Inherit From Matcher :family:

[![Gem Version](https://badge.fury.io/rb/rspec-inherit_from_matcher.svg)](http://badge.fury.io/rb/rspec-inherit_from_matcher)
[![Build Status](https://travis-ci.org/fny/rspec-inherit_from_matcher.svg)](https://travis-ci.org/fny/rspec-inherit_from_matcher)

## Installation

Add this line to your application's Gemfile:

```ruby
group :test do
  gem 'rspec-inherit_from_matcher'
end
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rspec-inherit_from_matcher

## Usage

```ruby
# Setup
Parent = Class.new
Child = Class.new(Parent)

# In your examples
expect(Child).to inherit_from(Parent)
expect(Parent).not_to inherit_from(Child)
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment. You can run the tests with `rake spec`

To install this gem onto your local machine, run `bundle exec rake install`.

## Contributing

1. Fork it ( https://github.com/fny/rspec-inherit_from_matcher/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
