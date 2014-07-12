# iframe.ly ruby client

Get http://iframe.ly in Ruby world

## Installation

Add this line to your application's Gemfile:

    gem 'iframely'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install iframely

## Usage


    iframely = Iframely::Requester.new api_key: 'you_api_key'

    iframely.get_json 'http://www.youtube.com/watch?v=wVVjOd_Ooys'
    # returns iframely json
    
    iframely.get_iframely 'http://www.youtube.com/watch?v=wVVjOd_Ooys'
    # returns Iframely::Model from iframely json

    iframely.get_oembed 'http://www.youtube.com/watch?v=wVVjOd_Ooys'
    # returns oembed json


## Contributing

1. Fork it ( https://github.com/[my-github-username]/iframely/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
