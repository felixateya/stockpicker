def stock_picker(prices)
    max_profit = 0
    best_buy_day = 0
    best_sell_day = 0

    prices.each_with_index do |buy_price, buy_day|
        prices[buy_day+1..-1].each_with_index do |sell_price, sell_day|
            profit = sell_price - buy_price
            if profit > max_profit
                max_profit = profit
                best_buy_day = buy_day
                best_sell_day = sell_day + buy_day + 1
            end
        end
    end

    [best_buy_day, best_sell_day]
end

p(stock_picker([17,3,6,9,15,8,6,1,10]))