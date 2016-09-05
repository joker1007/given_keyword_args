# GivenKeywordArgs

Add `given_keyword_args` and `given_keyword_args_with_rest` method to `Object`.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'given_keyword_args'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install given_keyword_args

## Usage

```
class Dummy
  def dummy(foo:, bar: "bar", **options)
    given_keyword_args
  end

  def dummy_with_rest(foo:, bar: "bar", **options)
    given_keyword_args_with_rest
  end
end

Dummy.new.dummy(foo: "foo", other1: "other1", other2: "other2") # => {foo: "foo", bar: "bar"}
Dummy.new.dummy_with_rest(foo: "foo", other1: "other1", other2: "other2") # => {foo: "foo", bar: "bar", other1: "other1", other2: "other2"}
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/joker1007/given_keyword_args.

