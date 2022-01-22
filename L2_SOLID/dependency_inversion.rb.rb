class Robot
  def initialize
    @left_arm = "left arm"
    @right_arm = "right arm"
  end

  def rotate_left_arm
    "I am rotating my #{@left_arm}"
  end

  def rotate_right_arm
    "I am rotating my #{@right_arm}"
  end
end

class RoboArt < Robot
  def initialize(tool)
    @tool = tool
  end

  def paint_canvass
   "Painting the canvass with my #{@tool} arm"
  end
end

robot1 = Robot.new
puts robot1.rotate_left_arm
puts RoboArt.new("paintbrush").paint_canvass
puts RoboArt.new("spray paint").paint_canvass


