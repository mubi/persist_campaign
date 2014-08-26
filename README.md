# PersistCampaign

Persist campaign parameters - such as utm_campaign, utm_source, etc - on Rails redirect_to.

## Installation

Add this line to your application's Gemfile:
```ruby
gem 'persist_campaign'
```

And then execute:
```sh
$ bundle
```

## Default persisted keys

* utm_campaign
* utm_source
* utm_medium
* utm_content
* utm_term
* gclid (for Google Adwords)

## Configure additional keys

You can append to the key array in a configuration block. There is an install generator to create
the initializer file.

```sh
rails g persist_campaign:install
```

Edit the initializer to append other keys:

```ruby
PersistCampaign.configure do |config|
  config.keys += ['foo']
end
```

## Testing
```sh
rake
```

## Credits
Thanks to [ndp](http://github.com/ndp)'s [save-the-campaign](http://github.com/save-the-campaign) gem for
providing the solution to patching Rail's redirect_to implemention. His solution is reproduced here under the
MIT license.

## Contributing

1. Fork it ( http://github.com/mubi/persist_campaign/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request