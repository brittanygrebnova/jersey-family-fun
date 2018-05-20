class JerseyFamilyFun::Event
  
  attr_accessor :title, :location, :date_and_time, :url
  
  def self.today
    self.scrape_events
  end
  
  def self.scrape_events
    
  end
  
end