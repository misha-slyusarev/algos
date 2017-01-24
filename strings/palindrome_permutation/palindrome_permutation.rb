def palindrome_permutation(s)
  char_groups = Hash.new
  s.delete("\s").downcase.each_char do |ch|
    char_groups[ch] ||= 0
    char_groups[ch] += 1
  end

  char_groups.values.select(&:odd?).count == 1
end
