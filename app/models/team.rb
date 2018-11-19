class Team

  attr_accessor :name, :motto, :members

  def initialize(hash)
    hash.each do |key, value|
      binding.pry
      self.send("#{key}=", value) if value.class != Array
    end
    self
  end

end
