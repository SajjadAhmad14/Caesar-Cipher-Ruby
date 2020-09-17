# frozen_string_literal: true

# This class for Caesar Cipher

class Cipher
  def initialize(str, key)
    @str = str
    @key = key
  end

  def caesar
    ascii_array = @str.bytes
    str1 = ''
    ascii_array.size.times do |i|
      str1 << if ascii_array[i] >= 65 && ascii_array[i] <= 90
                (((ascii_array[i] - 65) + @key) % 26 + 65).chr
              elsif ascii_array[i] >= 97 && ascii_array[i] <= 122
                (((ascii_array[i] - 97) + @key) % 26 + 97).chr
              else
                ascii_array[i]
              end
    end
    str1
  end
end

puts 'Enter any text to cipher it!'
text = gets.chomp
puts 'Enter key!'
key = gets.chomp.to_i
cipher = Cipher.new(text, key)
p cipher.caesar
