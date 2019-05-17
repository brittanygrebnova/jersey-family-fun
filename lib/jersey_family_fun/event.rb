class JerseyFamilyFun::Event

  attr_accessor :title_and_location, :date_and_time, :url

  def self.today
    self.scrape_events
  end

  def self.scrape_events
    doc = Nokogiri::HTML(open("https://www.njkidsonline.com/events"))
    doc.css('div.col-12').collect do |listed_event|
      event = self.new
      event.title_and_location = listed_event.css("h3").text.strip
      event.date_and_time = listed_event.css(".FieldRow").text.gsub("Date", "").strip
      event.url = "www.njkidsonline.com#{listed_event.css('a').attribute('href')}"
      event
    end
  end

end
