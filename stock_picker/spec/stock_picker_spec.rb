# spec/stock_picker_spec.rb
require '.././lib/stock_picker'

describe StockPicker do
  subject { StockPicker.new }

  describe '#pick_day' do
    it 'works with highest price in the first day' do
      stock_prices = [17, 3, 6, 9, 15, 8, 6, 1, 10]
      expected_result = [1, 4]
      expect(subject.pick_day(stock_prices)).to eql(expected_result)
    end

    it 'works with lowest price in the last day' do
      stock_prices = [17, 10, 6, 9, 15, 8, 6, 3, 1]
      expected_result = [2, 4]
      expect(subject.pick_day(stock_prices)).to eql(expected_result)
    end
  end
end
