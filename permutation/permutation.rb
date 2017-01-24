def permutation(s1, s2)
  return false unless s1.length == s2.length

  chars = Hash.new
  s1.each_char {|ch| chars[ch] = s2.count(ch) }
  chars.values.reduce(&:+) == s1.length
end
