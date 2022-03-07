# Polivalente
Reusable generic features for Rails applications

## Usage
How to use my plugin.

## Installation
Add this line to your application's Gemfile:

```ruby
gem "polivalente"
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install polivalente
```

Installation (copies migrations and [initializer](lib/generators/polivalente/polivalente.rb)):
```bash
$ rails g polivalente:install
```

Copy default `User` model:
```bash
$ rails g polivalente:user
```

Alternatively, set the `user_class` in `config`:
```ruby
Polivalente.configure do |config|
  # ...
  config.user_class = "MyUser"
end
```

Setup `devise`:
```bash
$ rails g devise:install
```

Copy [locales](config/locales) (optional):
```bash
$ rails g polivalente:locales
```

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
