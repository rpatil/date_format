# DateFormat

DateFormat is the gem used to access formatted datetime.

## Installation

Add this line to your application's Gemfile:

    gem 'date_format'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install date_format

## Usage

Try this snippet of code on ruby irb

    require 'date_format'
    today_time = Time.now
    puts DateFormat.change_to(today_time, "GENERAL_DATE")                  
    puts DateFormat.change_to(today_time, "LONG_DATE")
    puts DateFormat.change_to(today_time, "ISO_8601_FORMAT")
    puts DateFormat.change_to(today_time, "")
    puts DateFormat.change_to("", "")



## Contributing

1. Fork it ( https://github.com/[my-github-username]/date_format/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
