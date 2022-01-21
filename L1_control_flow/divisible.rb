arr = [6, 3, 1, 8, 4, 2, 10, 65, 102]
arr2 = []

arr.each {|number|
  if number % 2 == 0
	arr2.push(number)
end}

p arr2