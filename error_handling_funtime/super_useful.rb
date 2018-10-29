# PHASE 2
def convert_to_int(str)
  begin
    Integer(str)
  rescue ArgumentError
    nil
  end
end

# PHASE 3
FRUITS = ["apple", "banana", "orange"]

def reaction(maybe_fruit)
    puts "OMG, thanks so much for the #{maybe_fruit}!"
end

def feed_me_a_fruit
  puts "Hello, I am a friendly monster. :)"

  puts "Feed me a fruit! (Enter the name of a fruit:)"
  
  begin
    maybe_fruit = gets.chomp
    if FRUITS.include?(maybe_fruit)
      reaction(maybe_fruit)
    else
      raise "That's not a fruit"
    end
  rescue
    puts "That's not a fruit. If you want a second chance, give me coffee"
    if gets.chomp == "coffee"
      puts "Okay, try again"
      retry 
    end
  end
end 

# def reaction
#   begin
#     maybe_fruit = gets.chomp
#     raise "that's not a fruit, feed me coffee to try again" unless FRUITS.include? maybe_fruit
#     puts "OMG, thanks so much for the #{maybe_fruit}!"
#   rescue
#     puts "Thanks for the coffee try again" if maybe_fruit == 'coffee'
#     retry if maybe_fruit == "coffee"
#   end 
# end
# 
# def feed_me_a_fruit
#   puts "Hello, I am a friendly monster. :)"
# 
#   puts "Feed me a fruit! (Enter the name of a fruit:)"
#   reaction
# end  

# PHASE 4
class BestFriend
  def initialize(name, yrs_known, fav_pastime)
    @name = name
    @yrs_known = yrs_known
    @fav_pastime = fav_pastime
  end

  def talk_about_friendship
    puts "Wowza, we've been friends for #{@yrs_known}. Let's be friends for another #{1000 * @yrs_known}."
  end

  def do_friendstuff
    puts "Hey bestie, let's go #{@fav_pastime}. Wait, why don't you choose. 😄"
  end

  def give_friendship_bracelet
    puts "Hey bestie, I made you a friendship bracelet. It says my name, #{@name}, so you never forget me." 
  end
end


