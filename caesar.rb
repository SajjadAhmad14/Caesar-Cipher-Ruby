class Cipher
  def initialize(str, key)
    @str = str
    @key = key
  end
  def caesar
   ascii_array = @str.bytes
   str1 = ""
   ascii_array.size.times do |i|
     if ascii_array[i] >= 65 && ascii_array[i] <= 90
       str1 << (((ascii_array[i] - 65) + @key) % 26 + 65).chr
     elsif ascii_array[i] >= 97 && ascii_array[i] <= 122
       str1 << (((ascii_array[i] - 97) + @key) % 26 + 97).chr
     else
       str1 << ascii_array[i]
     end
   end
   str1
  end
end

cipher = Cipher.new("I am ZzyYxXwW!", 4)
p cipher.caesar