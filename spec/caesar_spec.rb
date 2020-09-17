require_relative '../caesar'
describe Cipher do
  describe '#initialize(str, key)' do
    it "create instance of Cipher" do
      cipher = Cipher.new("i", 1)
      expect(cipher).to be_a Cipher
    end
  end
  describe '#caesar' do
    cipher = Cipher.new("i", 1)
    it "return a string after ciphering it using a key" do
      expect(cipher.caesar).to eql("j")
    end
  end
  describe '#caesar' do
    cipher = Cipher.new("z", 1)
    it "wrap around z to a" do
      expect(cipher.caesar).to eql("a")
    end
  end
  describe '#caesar' do
    cipher = Cipher.new("Z", 1)
    it "wrap around Z to A" do
      expect(cipher.caesar).to eql("A")
    end
  end
end