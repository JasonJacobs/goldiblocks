require_relative '../config/environment'

class Bear

  attr_accessor :size, :power, :finishing_move, :mood, :house, :name
  
  def initialize
    self.size = 'massive'
    self.power = 'huge'
    self.mood = 'whatever bears are usually like'
    self.finishing_move = 'Bite to the face!'
  end

  def come_home_to_looted_house
    self.mood = 'pissed'
  end

  def find_intruder(intruder)
    puts "You're going down, #{intruder.name}!!!"
  end

  def stop_escape(intruder)
    chance = rand(0..1)
    if chance == 0
      just_missed(intruder)
    else
      administer_justice(intruder)
    end
  end

  def administer_justice(recipient)
    puts "#{finishing_move}"
    puts "#{recipient.name} has committed her last B&E."
    puts "The last thing she hears is \"No porridge will EVER BE our porridge.\""
    recipient.alive = false
  end

  def just_missed(missee)
    puts "#{name} barely misses and allows #{missee.name} to get away."
    puts "#{missee.name} runs away in the forest, never to be seen by the bear family again."
    puts "Hopefully #{missee.name} stops eating other people's porridge. It's totally not cool."
  end
end
