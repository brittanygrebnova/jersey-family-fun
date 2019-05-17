require 'launchy'

class JerseyFamilyFun::CLI

  def call
    list_events
    menu
    goodbye
  end

  def list_events
    puts "Welcome to Jersey Family Fun! Here is a list of today's events:"
    @events = JerseyFamilyFun::Event.today
    @events.each.with_index(1) do |event, index|
      if event.title_and_location != "" && event.url != 'www.njkidsonline.com'
        puts "#{index}. #{event.title_and_location} - #{event.date_and_time} - #{event.url}"
      end
    end
  end

  def menu
    input = nil
    while input != 'exit'
      puts "Enter the number of the event to go to that event's webpage, or 'list' to see today's list of events, or 'exit':"
      input = gets.strip.downcase

      if input.to_i > 0 && input.to_i <= @events.size
        Launchy.open("#{@events[input.to_i - 1].url}")
      elsif input == "list"
        list_events
      else
        puts "Please enter the number of the event you want to learn more about, 'list', or 'exit'"
      end
    end
  end

  def goodbye
    puts "Come back tomorrow for more family fun events!"
  end

end
