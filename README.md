# Cuhaml::Contrib

Contributed helpers to spice up your cuba+haml apps

## Installation

Add this line to your application's Gemfile:

    gem 'cuhaml-contrib'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install cuhaml-contrib

## Usage

1. Require it:

    `require "cuhaml/contrib"`

2. Enable the plugin:

    `Cuba.plugin Cuhaml::Contrib::ContentFor`

3. In your layout files:

    `- yield_for :js`

4. In your views:

    `- content_for :js do`

            :javascript
              console.log('hello world!');

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
