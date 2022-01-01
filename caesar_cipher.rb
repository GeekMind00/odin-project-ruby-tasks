str = gets.chomp
k = gets.chomp.to_i
str_output = ''
str.each_byte do |c|
  c += k if (c > 96 && c < 123) || (c > 64 && c < 91)
  str_output.concat(c.chr)
end
puts str_output
