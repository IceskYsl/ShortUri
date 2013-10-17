# ShortUri

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'ShortUri'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ShortUri

## Usage

```
key = "YOUR_KEY"
long_uri = "http://www.tagskill.com/"
@short_uri = ShortUri.new(key)
short_uri = @short_uri.shorten(long_uri)
puts short_uri

user_short = "ts#{Time.now.to_i}"
puts @short_uri.alias(long_uri,user_short)

puts @short_uri.expand("http://126.am/tagskill")
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
