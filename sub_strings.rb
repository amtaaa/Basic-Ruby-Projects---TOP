def substrings(word, array)
  res = {}
  array.each{|substring|
  count  = word.downcase.scan(substring.downcase).count 
    res[substring] = count if count > 0
  }
  res
end


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
