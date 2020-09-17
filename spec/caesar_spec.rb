require_relative '../caesar'
describe Cipher do
  let(:cipher) {Cipher.new("i", 1)}
  describe '#initialize(str, key)' do
    it "create instance of Cipher" do
      cipher = Cipher.new("i", 1)
      expect(cipher).to be_a Cipher
    end
  end
  describe '#caesar' do
    it "return a string after ciphering it using a key" do
      expect(cipher.caesar).to eql("j")
    end
  end
end