# frozen_string_literal: true

# Build a method #bubble_sort that takes an array and returns a sorted array.
# It must use the bubble sort methodology (using #sort would be pretty pointless, wouldn’t it?).

def bubble_sort(numbers)
  # Check whether the array has enough values for sorting
  # Otherwise, return the given array
  return numbers if numbers.length < 2

  sort_array(numbers)
end

# Use descending for loop to mark where each pass should end
def sort_array(arr)
  arr.length.downto(1) do |i|
    (0..i - 2).each do |k|
      next unless arr[k] > arr[k + 1]

      # Swap values
      placeholder = arr[k]
      arr[k] = arr[k + 1]
      arr[k + 1] = placeholder
    end

    # If the array is sorted after the pass, return it
    return arr if arr == arr.sort
  end
  arr
end

puts bubble_sort([3, 9, 2, 6, 14, 99, 27, 68])
