# spec/caesar_spec.rb
require '.././lib/caesar_cipher'

describe CaesarCipher do
  subject { CaesarCipher.new }

  describe '#encode' do
    it 'works with small positive shift' do
      expect(subject.encode('Zz', 5)).to eql('Ee')
    end

    it 'works with small negative shift' do
      expect(subject.encode('Ee', -5)).to eql('Zz')
    end

    it 'works with large positive shift' do
      expect(subject.encode('Zz', 83)).to eql('Ee')
    end

    it 'works with large negative shift' do
      expect(subject.encode('Ee', -83)).to eql('Zz')
    end

    it 'works with a phrase with punctuation' do
      expect(subject.encode('What a string!', 5)).to eql('Bmfy f xywnsl!')
    end

    it 'works with a phrase with a large shift' do
      expect(subject.encode('Hello, World!', 75)).to eql('Ebiil, Tloia!')
    end

    it 'works with a phrase with a large negative shift' do
      expect(subject.encode('Hello, World!', -55)).to eql('Ebiil, Tloia!')
    end
  end
end
