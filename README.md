# Unifi

This is a ruby client for the Unifi AP Controller software, version 4 only.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'unifi'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install unifi

## Usage

Create a connection to a Unifi AP controller as follows:

```ruby
controller = Unifi::Controller.new(host: 'my.unificontroller.com')
```

Other options for the controller are:
- `port`: In case you're not using the default `8443`
- `site`: If you've changed the name of your site from `default`, put the site id here.

Currently, the gem supports the following methods, which are named for and map directly to Unifi Controller API commands:

### login

Call this first, and be sure that the following, self-explanator ENV variables are set: UNIFI_USER, UNIFI_PASSWORD. If you don't `login` first, none of your other commands will be authorized.

### logout

Call this last to close the session.

### authorize_guest
Required arguments:
- `mac`: Guest MAC address
- `minutes`: number of minutes to authorize the guest for

Optional arguments
- `up`: Bandwidth limit up in Kbps
- `down`: Bandwidth limit down in Kbps

### unauthorize_guest
Required arguments:
- `mac`: Guest MAC address

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/unifi.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

