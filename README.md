# ChimpLight

A lightweight MailChimp API wrapper using libcurl

## Installation

Add this line to your application's Gemfile:

    gem 'chimp_light'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install chimp_light

## Usage

* Instantiate with your API key

$mail_chimp = ChimpLight::Api.new 'my_apikey'

* Now refer to the MailChimp API - http://apidocs.mailchimp.com/ and call any API command you need to like so:

$mail_chimp.listSubscribe :id => 'mylistid', :email_address => 'me@example.com'

## Advanced configuration

* MailChimp API version - default is '1.3', to override:

$mail_chimp = ChimpLight::Api.new 'my_apikey', :version => '1.2'

* Data center - default is 'us1', to override:

$mail_chimp = ChimpLight::Api.new 'my_apikey', :dc => 'us2'

* SSL - default is off, to override:

$mail_chimp = ChimpLight::Api.new 'my_apikey', :ssl => true

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
