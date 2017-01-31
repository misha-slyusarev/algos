def rotate_matrix(m)
  n = m.length
  rotate(m, 0, n-1)
  output_matrix(m)
end

def rotate(m, first_i, size)
  return if size == 1
  rotate(m, first_i + 1, size - 1)

  (first_i..size-1).each do |i|
    first = m[first_i][i]
    # 1
    m[first_i][i] = m[i][size]
    # 2
    m[i][size] = m[size][size+first_i-i]
    # 3
    m[size][size+first_i-i] = m[size+first_i-i][first_i]
    # 4
    m[size+first_i-i][first_i] = first
  end
end

def output_matrix(m)
  m.each{ |r| puts r.join(' ') }
end
