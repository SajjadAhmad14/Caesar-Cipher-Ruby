class Cipher
  def initialize(str, key)
    @str = str
    @key = key
  end
  def caesar
   ascii_array = @str.bytes
  end
end

cipher = Cipher.new("sajjad", 4)