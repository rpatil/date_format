module DateFormat
    
  def self.format_one(element, format_type)
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
      when "ISO_8601_FORMAT"
        "%F"
      when "GENERAL_DATE"
        "%m/%d/%y %r"
      when "LONG_DATE"
        "%A, %B %d, %Y"
      when "LONG_DATE"
        "%A, %B %d, %Y"
      else
        "%d.%m.%y"
      end
   end  
end