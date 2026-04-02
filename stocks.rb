def stock_picker(days)
  temp_buy_day = 0
  actual_buy_day = 0
  sell_day = 0
  max_profit = 0
  for i in (0...days.length)
    if days[i] < days[temp_buy_day]
      temp_buy_day = i
    end
    if max_profit < days[i] - days[temp_buy_day]
      max_profit = days[i] - days[temp_buy_day]
      sell_day = i
      actual_buy_day = temp_buy_day
    end
  end
  [actual_buy_day, sell_day]
end

res =  stock_picker([17,3,1,6,9,15,1,8,6,1,100,0,1])
puts res