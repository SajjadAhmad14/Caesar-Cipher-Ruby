require_relative '../caesar'
describe Cipher do
  describe '#initialize(str, key)' do
    it "create instance of Cipher" do
      cipher = Cipher.new("sajjad", 5)
      expect(cipher).to be_a Cipher
    end
  end
  describe '#caesar' do
  end
end