class Animal
  attr_reader :name
  def initialize
    @name = 'Animal'
  end
  def battle(other)
    return false if @name == 'Animal' && other.name == 'Animal'
  end
end

class Unicorn < Animal
  def initialize
    @name = 'Unicorn'
  end
  def battle(other)
    return true if other.name == 'Wearwolf'
    return true if other.name == 'T-Rex'
    return false
  end
end

class Wearwolf < Animal
  def initialize
    @name = 'Wearwolf'
  end
  def battle(other)
    return true if other.name == 'Dragon'
    return false
  end
end

class Dragon < Animal
  def initialize
    @name = 'Dragon'
  end
  def battle(other)
    return false if other.name == 'Wearwolf'
    return true
  end
end

class Trex < Animal
  def initialize
    @name = 'T-Rex'
  end
  def battle(other)
    return true if other.name == 'Wearwolf'
    return false
  end
end
