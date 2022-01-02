# substring class for counting substrings in a certain dictionary
class Substrings
  def generate_substring(str)
    output = []
    (0...str.length).each do |i|
      (i...str.length).each do |j|
        output << str[i..j]
      end
    end
    output
  end

  def count_substring(str, dic)
    str.downcase!
    substring_count = Hash.new(0)
    all_substrings = generate_substring(str)
    all_substrings.each do |substring|
      dic.each do |dic_str|
        substring_count[substring] += 1 if substring == dic_str
      end
    end
    substring_count
  end
end
