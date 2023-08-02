def stock_picker(prices)
  num = prices.length
  output_array = []
  store_profit = 0

  for i in 0...num
    for j in (i + 1)...num
      difference = "#{prices[i] - prices[j]}".to_i
      puts "The difference between #{prices[i]} and #{prices[j]} is #{difference}"
      if store_profit > difference
        store_profit = difference
        output_array.push("#{i}", "#{j}")
      end
    end
  end

  output_array[-2..-1].map { |price| price.to_i }

end

stock_picker([17,3,6,9,15,8,6,1,10])
#=> [1, 4]
