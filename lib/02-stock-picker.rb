def stock_picker(prices)
	best_deal 			= 0
	sell_day_deal 	= 0
	buy_day_deal  	= 0
	selling_prices 	= prices.dup

	prices.each_with_index do |buy_price, buy_day|
		selling_prices.each_with_index do |sell_price, i|
			deal     	  = sell_price - buy_price
			if deal > best_deal
				best_deal = deal 
				sell_day_deal = i + buy_day
				buy_day_deal  = buy_day
			end
		end
		selling_prices.shift
	end
	puts "the best gain is $#{best_deal}, selling for $#{prices[sell_day_deal]} and buying for $#{prices[buy_day_deal]}"
	return [buy_day_deal, sell_day_deal]
end


puts stock_picker([17,3,6,9,15,8,6,1,10])