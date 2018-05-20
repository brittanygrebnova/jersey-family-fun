class JerseyFamilyFun::CLI
  
  def call
    list_events
    menu
    goodbye
  end
  
  def list_events
    #list the events in numbered order from mommypoppins
    puts "Welcome to Jersey Family Fun! Here is a list of today's events:"
    @events = JerseyFamilyFun::Event.today
  end
  
  def menu
    input = nil
    while input != 'exit'
      puts "Enter the number of the event you'd like more information about, or 'list' to see today's list of events, or 'exit'"
      input = gets.strip.downcase
      case input
      when "1"
        puts "More info on event 1..."
      when "2"
        puts "More info on event 2..."
      when "list"
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