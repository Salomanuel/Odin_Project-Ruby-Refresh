def stock_picker(prices)
	best_deal = 0
	buy_deal  = 0
	sell_deal = 0
	selling_prices = prices.dup
	prices.each do |buy_price|
		selling_prices.each do |sell_price|
			deal      = sell_price - buy_price
			if deal > best_deal
				best_deal = deal 
				buy_deal  = buy_price
				sell_deal = sell_price
			end
			puts "today we buy at #{buy_price} and sell at #{sell_price}"
			puts "profit is #{sell_price - buy_price} and the best deal is #{best_deal}"
			puts
		end
		selling_prices.shift
		puts selling_prices.join(",")
	end
	return "the best gain is $#{best_deal}, selling for $#{sell_deal} and buying for $#{buy_deal}"
end


puts stock_picker([17,3,6,9,15,8,6,1,10])