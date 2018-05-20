class JerseyFamilyFun::Event
  
  attr_accessor :title, :location, :date_and_time, :url
  
  def self.today
    puts <<-DOC.gsub /^\s*/, ''
    1. Touch-a-Truck in Ridgewood - Memorial Park at Van Neste Square - Thursday 05/17/2018 09:00 AM
    2. Raise the Roof - Museum of Early Trades & Crafts - Thursday 05/17/2018 4:00 PM
    DOC
    
    event_1 = self.new
    event_1.title = "Touch-a-Truck in Ridgewood"
    event_1.location = "Memorial Park at Van Neste Square"
    event_1.date_and_time = "Thursday 05/17/2018 09:00 AM"
    event_1.url = "https://mommypoppins.com/events?area%5B%5D=117&field_event_date_value%5B%5D=05-19-2018&event_end=2018-05-19"
    
    event_2 = self.new
    event_2.title = "Raise the Roof"
    event_2.location = "Museum of Early Trades & Crafts"
    event_2.date_and_time = "Thursday 05/17/2018 4:00 PM"
    event_2.url = "https://mommypoppins.com/events?area%5B%5D=117&field_event_date_value%5B%5D=05-19-2018&event_end=2018-05-19"
    
    [event_1, event_2]
  end
  
end