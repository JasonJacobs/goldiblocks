require_relative '../config/environment'

class House

  attr_accessor :chairs, :door, :beds, :porridges, :name, :guests, :windows


  def initialize
    self.chairs = ['big', 'medium', 'small']
    self.door = 'Works great!'
    self.beds = ['hard', 'soft', 'perfect']
    self.porridges = ['hot', 'cold', 'just right']
    self.windows = true
    self.guests = []
  end


end