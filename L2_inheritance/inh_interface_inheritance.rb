# Interface inheritance
class Animal; end

module Swimable
  def swim
    "I'm swimming!"
  end
end

class Animal; end

class Fish < Animal
  include Swimable
end

dory = Fish.new
puts dory.swim