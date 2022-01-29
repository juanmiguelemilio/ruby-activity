def list(names)
  names.map { |x| x.values }
   .join(' ')
   .gsub(' ', ', ')
   .reverse
   .sub(',', '& ')
   .reverse
end