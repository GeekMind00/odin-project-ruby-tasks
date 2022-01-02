# spec/bubble_sort_spec.rb
require '.././lib/bubble_sort'

describe BubbleSort do
  subject { BubbleSort.new }

  describe '#sort_the_bubbles' do
    it 'works with one word' do
      input = [4, 3, 78, 2, 0, 2]
      expected_result = [0, 2, 2, 3, 4, 78]
      expect(subject.sort_the_bubbles(input)).to eql(expected_result)
    end
  end
end
