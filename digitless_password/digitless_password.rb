def longest_password_length(s)
  m = s.scan(/(\D*\p{Uppercase}+\D*)/)
  m.flatten.map(&:length).max || -1
end

[
  'a0Ba',
  'a0bb',
  'A',
  'c',
  '7aLskw9fD9ad88s',
  'Laaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'
].each do |line|
  puts line
  puts longest_password_length(line)
end
