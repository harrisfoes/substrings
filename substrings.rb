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
  word.split(' ').filter do | word |
    array_of_substrings.each do | substring | 
      p "word: #{word} substring: #{substring} #{word.include?(substring)}" 
      if word.downcase.include?(substring.downcase)
        p "word: #{word} substring #{substring}"
        return_hash[substring] += 1  
      end
    end
  end
  return return_hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)


