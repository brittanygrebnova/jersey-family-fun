class JerseyFamilyFun::Event
  
  attr_accessor :title, :location, :date_and_time, :url
  
  def self.today
    self.scrape_events
  end
  
  def self.scrape_events
    doc = Nokogiri::HTML(open("https://www.njkidsonline.com/events"))
    doc.css("div.ListingItem").each do |listed_event|
      event = self.new
      event.title = listed_event.css("h3").text
      event.location = nil
      event.date_and_time = nil
      event.url = nil
      binding.pry
    end
  end
  
end