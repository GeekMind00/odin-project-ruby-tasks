# caesar cipher encoding
class CaesarCipher
  def encode(message, shift, str_output = '')
    message.each_byte do |c|
      base = c < 91 ? 65 : 97
      rotated_char = (((c - base) + shift) % 26) + base
      if c.between?(97, 122) || c.between?(65, 90)
        str_output.concat(rotated_char.chr)
      else
        str_output.concat(c.chr)
      end
    end
    str_output
  end
end
