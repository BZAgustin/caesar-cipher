# frozen_string_literal: true

# Shift the characters by the factor indicated, ignoring the ones that are not alphabetic
def shift_characters(arr, factor)
  if arr.any? { |char| char >= 65 && char <= 90 || char >= 97 && char <= 122 }
    arr = arr.map do |char|
      if char >= 65 && char <= 90 || char >= 97 && char <= 122
        char += factor
      else
        char
      end
    end
  end
  arr
end

# Check if any shifted character goes past 'Z'. Wrap it around if it does
def wrap_characters(arr)
  if arr.any? { |char| char > 122 || char > 90 && char < 97 }
    arr = arr.map do |char|
      if char > 122
        char = 96 + (char - 122)
      elsif char > 90 && char < 97
        char = 64 + (char - 90)
      else
        char
      end
    end
  end
  arr
end

def caesar_cipher(str, factor)
  # Convert the string to an array of ASCII values with #bytes
  ascii_chars = str.bytes

  ascii_chars = shift_characters(ascii_chars, factor)

  ascii_chars = wrap_characters(ascii_chars)

  # Convert the ASCII array back to characters
  ascii_chars = ascii_chars.map { |char| char = char.chr }

  # Finally return it as a string
  ascii_chars.join('')
end

# Ask user for input
puts 'Enter a string: '
str_input = gets.chomp

puts 'Enter a shift factor (number):'
num_input = gets.chomp
num_input = num_input.to_i

puts caesar_cipher(str_input, num_input)
