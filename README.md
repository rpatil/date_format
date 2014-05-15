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
    puts DateFormat.change_to(today_time, "GENERAL_DATE")                       # => 05/15/14 01:22:29 PM               
    puts DateFormat.change_to(today_time, "LONG_DATE")                          # => Thursday, May 15, 2014
    puts DateFormat.change_to(today_time, "ISO_8601_FORMAT")                    # => 2014-05-15

    puts DateFormat.change_to(today_time, "MEDIUM_DATE")                        # => 15-May-2014
    puts DateFormat.change_to(today_time, "SHORT_DATE")                         # => 05/15/14
    puts DateFormat.change_to(today_time, "LONG_TIME")                          # => 01:22:29 PM
    puts DateFormat.change_to(today_time, "MEDIUM_TIME")                        # => 13:22 PM
    puts DateFormat.change_to(today_time, "SHORT_TIME")                         # => 13:22
    puts DateFormat.change_to(today_time, "WEEK_OF_YEAR")                       # => 19
    puts DateFormat.change_to(today_time, "DAY_IN_MONTH")                       # => 15
    puts DateFormat.change_to(today_time, "JULIAN_DAY")                         # => 2014
    puts DateFormat.change_to(today_time, "ONLY_HOUR_IN_24HOUR_FORMAT")         # => 13 Hour
    puts DateFormat.change_to(today_time, "HOURS_IN_24HOUR_FORMAT")             # => 13:34 Hour:Minute
    puts DateFormat.change_to(today_time, "MINUTE_IN_HOUR")                     # => 34 Minute

    puts DateFormat.change_to(today_time, "")
    puts DateFormat.change_to("", "")

## Contributing

1. Fork it ( https://github.com/[my-github-username]/date_format/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
