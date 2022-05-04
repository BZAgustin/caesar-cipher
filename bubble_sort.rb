# Build a method #bubble_sort that takes an array and returns a sorted array. 
# It must use the bubble sort methodology (using #sort would be pretty pointless, wouldn’t it?).

def bubble_sort(numbers)
    # Check whether the array has enough values for sorting
    # Otherwise, return the given array
    if numbers.length < 2
        return numbers
    end

    # Use descending for loop to mark where each pass should end
    numbers.length.downto(1) do |i|
        for k in 0..i-2 do
            if numbers[k] > numbers[k+1]
                # Swap values
                placeholder = numbers[k]
                numbers[k] = numbers[k+1]
                numbers[k+1] = placeholder
            end
        end

        # If the array is sorted after the pass, return it
        if numbers == numbers.sort
            return numbers
        end
    end
end
