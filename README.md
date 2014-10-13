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
    puts DateFormat.change_to(today_time, "GENERAL_DATE")               # => 10/11/14 05:12:26 PM
    puts DateFormat.change_to(today_time, "LONG_DATE")                  # => Saturday, October 11, 2014
    puts DateFormat.change_to(today_time, "ISO_8601_FORMAT")            # => 2014-10-11
    puts DateFormat.change_to(today_time, "MEDIUM_DATE")                # => 11-Oct-2014
    puts DateFormat.change_to(today_time, "SHORT_DATE")                 # => 10/11/14 (mm/dd/yy)
    puts DateFormat.change_to(today_time, "LONG_TIME")                  # => 05:12:26 PM
    puts DateFormat.change_to(today_time, "MEDIUM_TIME")                # => 17:12 PM
    puts DateFormat.change_to(today_time, "SHORT_TIME")                 # => 17:12
    puts DateFormat.change_to(today_time, "WEEK_OF_YEAR")               # => 40
    puts DateFormat.change_to(today_time, "DAY_IN_MONTH")               # => 11
    puts DateFormat.change_to(today_time, "JULIAN_DAY")                 # => 2014
    puts DateFormat.change_to(today_time, "ONLY_HOUR_IN_24HOUR_FORMAT") # => 17
    puts DateFormat.change_to(today_time, "HOURS_IN_24HOUR_FORMAT")     # => 17:12
    puts DateFormat.change_to(today_time, "MINUTE_IN_HOUR")             # => 12
    puts DateFormat.change_to(today_time, "ONLY_DATE")                  # => October 11, 2014
    puts DateFormat.change_to(today_time, "LONG_DATE_SHORT")            # => Sat, October 11, 2014
    puts DateFormat.change_to(today_time, "ONLY_DATE_DEFAULT")          # => 11/10/2014 (dd/mm/yy)
    puts DateFormat.change_to(today_time, "ONLY_DATE_SHORT")            # => Oct 11, 2014
    puts DateFormat.change_to(today_time, "")                           # => 11.10.14
    puts DateFormat.change_to("", "")                                   # => NA

    # For Time Difference
    start_date = Time.parse('2014-05-25 18:37:11')
    DateFormat.time_difference(start_date, "PRESENT_DAY", "DAY_ONLY")
    DateFormat.time_difference(start_date, "PRESENT_DAY", "HOUR_ONLY")
    DateFormat.time_difference(start_date, "PRESENT_DAY", "MINUTE_ONLY")
    DateFormat.time_difference(start_date, "PRESENT_DAY", "SECOND_ONLY")
    DateFormat.time_difference(start_date, "", "DAY_ONLY")
    DateFormat.time_difference(start_date, "", "HOUR_ONLY")
    DateFormat.time_difference(start_date, "", "MINUTE_ONLY")
    DateFormat.time_difference(start_date, "", "SECOND_ONLY")
    DateFormat.time_difference(start_date, "AA", "HOUR_ONLY")
    DateFormat.time_difference(start_date, "XX", "MINUTE_ONLY")
    DateFormat.time_difference(start_date, "DD", "SECOND_ONLY")



## Contributing

1. Fork it ( https://github.com/[my-github-username]/date_format/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
