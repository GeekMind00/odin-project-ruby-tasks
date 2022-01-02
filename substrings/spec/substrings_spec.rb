# spec/substrings_spec.rb
require '.././lib/substrings'

describe Substrings do
  subject { Substrings.new }
  dictionary = %w[below down go going horn how howdy it i low own part partner
                  sit]

  describe '#count_substring' do
    it 'works with one word' do
      expected_result = { 'below' => 1, 'low' => 1 }
      expect(subject.count_substring('below', dictionary)).to eql(expected_result)
    end

    it 'works with multiple words' do
      expected_result = { 'down' => 1, 'go' => 1, 'going' => 1, 'how' => 2, 'howdy' => 1, 'it' => 2, 'i' => 3,
                          'own' => 1, 'part' => 1, 'partner' => 1, 'sit' => 1 }
      expect(subject.count_substring("Howdy partner, sit down! How's it going?", dictionary)).to eql(expected_result)
    end
  end
end
