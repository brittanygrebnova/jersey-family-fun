# JerseyFamilyFun

JerseyFamilyFun is a Ruby CLI gem that scrapes www.njkidsonline.com to users with a list of family-oriented events that are happening in New Jersey on that particular day. You will be greeted, then provided with a list of statewide events that will include the title, description, and a link to more event details. You should then be able to read through the list, choose to get more information about any of the events listed, and exit when you wish.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'jersey_family_fun'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install jersey_family_fun

## Usage

After installing JerseyFamilyFun, execute the program by running ./bin/jersey_family_fun. You will then be greeted and provided with a list of the day's family events happening in New Jersey. Choose the number of the event that interests you, and you will then be given the rest of the event details.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/'brittanygrebnova'/jersey_family_fun. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the JerseyFamilyFun project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/'brittanygrebnova'/jersey_family_fun/blob/master/CODE_OF_CONDUCT.md).
