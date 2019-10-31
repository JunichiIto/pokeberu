[![Build Status](https://travis-ci.org/JunichiIto/pokeberu.svg?branch=master)](https://travis-ci.org/JunichiIto/pokeberu)
# Pokeberu

Sandbox app which converts numbers to chars according to [Japanese pager rule](https://ja.wikipedia.org/wiki/2%E3%82%BF%E3%83%83%E3%83%81%E5%85%A5%E5%8A%9B).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'pokeberu'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install pokeberu

## Usage

```ruby
require 'pokeberu'

converter = Pokeberu::Converter.new
converter.to_chars('1112324493')
#=> ｱｲｼﾃﾙ
```

Or

```
$ pokeberu
メッセージを入力してください (h=help, q=quit): 1112324493
--------------------
| ｱｲｼﾃﾙ            |
--------------------

メッセージを入力してください (h=help, q=quit): q
--------------------
| BYE!             |
--------------------

```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/JunichiIto/pokeberu. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Pokeberu project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/JunichiIto/pokeberu/blob/master/CODE_OF_CONDUCT.md).
