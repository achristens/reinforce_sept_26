emotions = {
  :happiness => 3,
  :stress => 2,
  :fear => 1
}

class Person
  def initialize(name, emotions)
    @name = name
    @emotions = emotions
  end

  def emotions
    @emotions
  end

  def name
    @name
  end

  def message
    emotions.each do | k,v |
      if v == 1
        puts "I am feeling a low amount of #{k}."
      elsif v == 2
        puts "I am feeling a medium amount of #{k}."
      else
        puts "I am feeling a high amount of #{k}."
      end
    end
  end

end

abby = Person.new("Abby", emotions)
# puts abby.inspect
puts abby.message
