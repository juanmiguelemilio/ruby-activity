class Entity
    @@counter = 0
  
    def initialize
      @@counter += 1
      puts "There are #{@@counter} entities"
    end
  end
  
  a = Entity.new
  b = Entity.new
  c = Entity.new
  
  # output:
  # "There are 1 entities"
  # "There are 2 entities"
  # "There are 3 entities"