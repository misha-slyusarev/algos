def is_unique(s)
  for first in 0..s.length - 1
    for second in first+1..s.length - 1
      return false if s[first].chr == s[second].chr
    end
  end

  true
end
