def count_positives_sum_negatives(lst)
  case lst
    when []
      []
    else
      sum = 0
      pos = lst.count {|i| i > 0}
      neg = lst.each {|i| sum += i if i < 0}
      [pos,sum]
    end
end