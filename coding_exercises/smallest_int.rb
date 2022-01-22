def find_smallest_int(arr)
  num = arr[0]
  arr.each do |x|
    if x < num
      num = x
    end
  end
  num
end