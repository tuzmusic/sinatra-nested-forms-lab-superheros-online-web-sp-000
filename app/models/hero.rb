class Hero

  attr_accessor :name, :power, :bio

  def initialize(hash)
    hash.each do |key, value|
      self.send("#{key}=", value) if value.class != Array
    end
    self
  end

end