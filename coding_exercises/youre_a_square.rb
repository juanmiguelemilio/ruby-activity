def is_square(x)
  (0..x).each do |num|
    if x == num * num
      return true
    end
  end
  return false
end