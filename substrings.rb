# Substrings
# @ word
# @ array of valid substrings
#
# returns a hash listing each substring
# found and how many times it was found

#   dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
#   ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
#   substrings("below", dictionary)
#   { "below" => 1, "low" => 1 }


def substrings(word, array_of_substrings)
  return_hash = Hash.new(0)

  word.split(' ').each do | word |
    array_of_substrings.each do | substring | 
      return_hash[substring] += 1 if word.downcase.include?(substring.downcase)
    end
  end
  return_hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)


