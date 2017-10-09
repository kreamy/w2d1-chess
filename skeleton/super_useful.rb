# PHASE 2
def convert_to_int(str)
  begin
    Integer(str)
  rescue ArgumentError => e
    nil
    puts "Error was: #{e.message}"
  end
end

# PHASE 3
FRUITS = ["apple", "banana", "orange"]

def reaction(maybe_fruit)
  if FRUITS.include? maybe_fruit
    puts "OMG, thanks so much for the #{maybe_fruit}!"
  else
    raise StandardError
  end
end

def feed_me_a_fruit
  puts "Hello, I am a friendly monster. :)"

  puts "Feed me a fruit! (Enter the name of a fruit:)"
  begin
    maybe_fruit = gets.chomp
    reaction(maybe_fruit)
  rescue
    puts "that ain't a fruit, you nut! gimme what I need!"
    retry
  end
end

# PHASE 4
class BestFriend
  def initialize(name, years, fav_pastime)
    @name = name
    @fav_pastime = fav_pastime
    raise StandardError.new "Please enter an actual pastime" if @fav_pastime.length < 1
  # rescue
  #     puts "#{e.message}"
  #   raise StandardError if @name.length < 1
  raise StandardError.new "Please enter an actual name" if @name.length < 1

    @yrs_known = years
      begin
        raise StandardError if @yrs_known < 5
      rescue
        puts "that's not enough, need more years!"
        years = gets.chomp
        @yrs_known = years.to_i
        retry
      end
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
