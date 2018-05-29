class CaesarCipher
  attr_accessor :text
  attr_accessor :num

  def initialize(text, num=13)
    @text = text
    @num = num
  end

  def perform
    caesar_cipher(@text, @num)
  end

  def caesar_cipher(string, shift = 1)
    alphabet  = Array('a'..'z')
    non_caps  = Hash[alphabet.zip(alphabet.rotate(shift))]

    alphabet = Array('A'..'Z')
    caps     = Hash[alphabet.zip(alphabet.rotate(shift))]

    encrypter = non_caps.merge(caps)

    string.chars.map { |c| encrypter.fetch(c, c) }.join
  end
end


# cc = CaesarCipher.new('Ala ma...psa!', 4)
#
# puts cc.perform