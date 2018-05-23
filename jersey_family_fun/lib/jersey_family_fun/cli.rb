class JerseyFamilyFun::CLI
  
  def call
    list_events
    menu
    goodbye
  end
  
  def list_events
    #list the events in numbered order from njkids
    puts "Welcome to Jersey Family Fun! Here is a list of today's events:"
    @events = JerseyFamilyFun::Event.today
    @events.each.with_index do |index, event|
      puts "#{index + 1}. #{event.title_and_location} - #{event.date_and_time} - #{event.url}"
      binding.pry
    end
  end
  
  def menu
    input = nil
    while input != 'exit'
      puts "Enter the number of the event you'd like more information about, or 'list' to see today's list of events, or 'exit'"
      input = gets.strip.downcase
      
      if input.to_i > 0
        event_chosen = @events[input.to_i - 1]
        puts "#{event_chosen.title_and_location} - #{event_chosen.date_and_time} - #{event_chosen.url}"
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