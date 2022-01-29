def century(year)
  century = year / 100
  if century == year / 100.0
    century
  else
    century.floor() + 1
  end
end

def century(year)
  (year - 1) / 100 + 1
end