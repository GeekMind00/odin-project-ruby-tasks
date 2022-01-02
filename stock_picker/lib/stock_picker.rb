# Stock picker class to determine the best day to buy and sell.
class StockPicker
  def pick_day(stock_prices)
    sell = buy = 0
    (0...stock_prices.length).each do |i|
      (i + 1...stock_prices.length).each do |j|
        if (stock_prices[j] - stock_prices[i]) > (stock_prices[sell] - stock_prices[buy])
          sell = j
          buy = i
        end
      end
    end
    [].push(buy, sell)
  end
end
