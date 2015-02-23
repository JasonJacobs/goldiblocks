require_relative '../config/environment'

class Girl

  attr_accessor :name, :size, :awareness, :alive, :conscious

  def initialize
    self.size = 'dainty'
    self.alive = true
    self.conscious = false
    self.awareness = false
  end

  def sit_down(chairs)
    chairs.each.with_index(0) do |chair, i|
      if chair == 'big'
        puts "This chair could be big enough for a bear."
      elsif chair == 'medium'
        puts "Another huge-ass chair."
      elsif chair == 'small'
        puts "This one is actually oka.....Ah, crap."
        chairs[i] = nil
      end
    end
  end

  def pick_lock(lock_location)
    if lock_location.guests.include?(self.name)
    else
      lock_location.guests << self.name
    end
  end

  def lay_down(beds)
    beds.each do |bed|
      if bed == 'hard'
        puts "This bed is hard as a rock."
      elsif bed == 'soft'
        puts "Too...soft...can't.....get....out...."
      elsif bed == 'perfect'
        puts "I feel like I'm floating!"
      end
    end
  end

  def eat_porridge(porridges)
    porridges.each.with_index(0) do |porridge, i|
      if porridge == 'hot'
        puts "This porridge is too damn hot!"
      elsif porridge == 'cold'
        puts "This one's freezing cold!"
      elsif porridge == 'just right'
        puts "Awwwwwwwwww yeaaaaaaaaaa. That's the one."
        porridges[i] = nil
      end
    end
  end

  def escape_attempt(location)
    puts "#{name} looks around for the nearest possible escape."
    if location.windows
      "She finds a window and makes a break for it!"
    else
      "Lol, you're screwed"
    end
  end


  ###### CLASS METHODS #######

  def self.run
    goldie = Girl.new
    goldie.name = "Goldiblocks"
    goldie.greeting
    intro = "
      Once upon a time, there was a little girl named #{name}.
      She went for a walk somehwere no little girls should ever go...the forest.
      Pretty soon, she stumbled upon a house. While most people would have just walked away,
      little Miss #{name} just had to see what was inside.
      "
    puts "#{intro}"
    puts "...But the door was locked. So #{name} decided to take measure into her own hands."
    home = House.new
    

  end


end