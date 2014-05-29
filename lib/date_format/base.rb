module DateFormat
    
  def self.change_to(element, format_type)
    begin
      unless element.nil? || element == ""
        element.strftime(choose_date_format(format_type))
      else
        "NA"
      end
    rescue
      element
    end
  end
    
  def self.choose_date_format(format_type)
    case format_type      
    when "ISO_8601_FORMAT"                              # => 2014-05-15
        "%F"
      when "GENERAL_DATE"                               # => 4/3/93 05:34:00 PM
        "%m/%d/%y %r"
      when "LONG_DATE"                                  # => Saturday, April 3, 2014
        "%A, %B %d, %Y"
      when "MEDIUM_DATE"                                # => 3-Apr-2014
        "%d-%b-%Y"
      when "SHORT_DATE"                                 # => 4/3/93
        "%D"
      when "LONG_TIME"                                  # => 5:34:23 PM
        "%r"
      when "MEDIUM_TIME"                                # => 5:34 PM
        "%H:%M %p"
      when "SHORT_TIME"                                 # => 17:34
        "%H:%M"
      when "WEEK_OF_YEAR"                               # => 19
        "%W"
      when "DAY_IN_MONTH"                               # => 3
        "%d"
      when "JULIAN_DAY"                                 # => 2014
        "%G"
      when "ONLY_HOUR_IN_24HOUR_FORMAT"                 # => 13 Hour
        "%H"
      when "HOURS_IN_24HOUR_FORMAT"                     # => 13:34 Hour:Minute
        "%H:%M"
      when "MINUTE_IN_HOUR"                             # => 34 Minute
        "%M"
      else
        "%d.%m.%y"
    end
  end
  
  
  def self.day_difference(start_date, end_date)
    formatted_time = ""  
    end_date = Time.now if end_date == 'PRESENT_DAY'
    time_difference_in_second = (end_date - start_date).to_i
    rest, seconds = time_difference_in_second.divmod( 60 )
    rest, minutes = rest.divmod( 60 )
    days, hours = rest.divmod( 24 )    
    
    if days > 0
      tag = (days < 2) ? "day" : "days"
      formatted_time += "#{days} #{tag} "
    end
    
    if hours > 0
      tag = (hours < 2) ? "hour" : "hours"
      formatted_time += "#{hours} #{tag} "
    end
    
    if minutes > 0
      tag = (minutes < 2) ? "minute" : "minutes"
      formatted_time += "#{minutes} #{tag} "
    end
 
    if seconds > 0
      tag = (seconds < 2) ? "second" : "seconds"
      formatted_time += "#{seconds} #{tag} "
    end
      
    formatted_time    
  end
  
end