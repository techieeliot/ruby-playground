# ruby in twenty minutes on 4/30/2019
# https://www.ruby-lang.org/en/documentation/quickstart/4/
# first method in ruby! Yay!!!!
def hi(name)
    puts "Hi #{name}!"
end

hi("Eliot")

def hi(name = "you")
    puts "Hi #{name.capitalize}"
end

hi "eliot"


# adding the mega greeter
class MegaGreeter
    attr_accessor :names
  
    # Create the object
    def initialize(names = "You")
      @names = names
    end
  
    # Say hi to everybody
    def say_hi
      if @names.nil?
        puts "..."
      elsif @names.respond_to?("each")
        # @names is a list of some kind, iterate!
        @names.each do |name|
          puts "Hey #{name}!"
        end
      else
        puts "Hey #{@names}!"
      end
    end
  
    # Say bye to everybody
    def say_bye
      if @names.nil?
        puts "..."
      elsif @names.respond_to?("join")
        # Join the list elements with commas
        puts "Goodbye #{@names.join(", ")}.  Glad you stopped by!"
      else
        puts "Goodbye #{@names}.  Glad you stopped by!"
      end
    end
  end
  
  
  if __FILE__ == $0
    mg = MegaGreeter.new
    mg.say_hi
    mg.say_bye
  
    # Change name to be "Zeke"
    mg.names = "Dude"
    mg.say_hi
    mg.say_bye
  
    # Change the name to an array of names
    mg.names = ["Jill", "Nicole", "Stevie",
                "Tyler", "Zeke"]
    mg.say_hi
    mg.say_bye
  
    # Change to nil
    mg.names = nil
    mg.say_hi
    mg.say_bye
  end

