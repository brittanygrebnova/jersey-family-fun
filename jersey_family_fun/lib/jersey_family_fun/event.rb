class JerseyFamilyFun::Event
  
  attr_accessor :title, :location, :date_and_time, :url
  
  def self.today
    self.scrape_events
  end
  
  def self.scrape_events
    doc = Nokogiri::HTML(open(https://mommypoppins.com/events?area%5B%5D=117&field_event_date_value%5B%5D=05-20-2018&event_end=2018-05-20))
    binding.pry
  end
  
end