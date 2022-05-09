# frozen_string_literal: true

# Implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day.
# It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.

# You need to buy before you can sell.
# Pay attention to edge cases like when the lowest day is the last day or the highest day is the first day.

def stock_picker(prices)
  # Store the minimum and maximum price of the stocks
  min = prices.min
  max = prices.max

  # Save a copy of the prices
  original_prices = []
  original_prices += prices

  while prices.length >= 2
    # Check whether the lowest price comes before the highest
    if original_prices.index(min) < original_prices.index(max)
      # Return the day to buy and day to sell
      puts [original_prices.index(min), original_prices.index(max)]
      break
    else
      # Ignore the compared values and set new lowest and highest price
      prices.delete(min)
      prices.delete(max)
      min = prices.min
      max = prices.max
    end
  end
end
