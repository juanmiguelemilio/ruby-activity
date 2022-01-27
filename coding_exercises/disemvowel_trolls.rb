def disemvowel(str)
  str.delete("aeiouAEIOU")
end

def disemvowel(str)
  str.gsub!(/[aeiou]/i, '')
end