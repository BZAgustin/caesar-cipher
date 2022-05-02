def caesar_cipher(str, factor)
    # Convert the string to an array of ASCII values with #bytes
    asciiChars = str.bytes

    # Shift the characters by the factor indicated, ignoring the ones that are not
    if asciiChars.any? { |char| char >= 65 && char <= 90 || char >= 97 && char <= 122 }
        asciiChars = asciiChars.map do |char| 
            if char >= 65 && char <= 90 || char >= 97 && char <= 122
                char += factor
            else
                char
            end
        end
    end

    # Check if any shifted character goes past 'Z'. Wrap it around if it does
    if asciiChars.any? { |char| char > 122 || char > 90 && char < 97 }
       asciiChars = asciiChars.map do |char|
            if char > 122
                char = 96 + (char-122)
            elsif char > 90 && char < 97
                char = 64 + (char-90)
            else
                char
            end
        end
    end

    # Convert the ASCII array back to characters
    asciiChars = asciiChars.map { |char| char = char.chr }

    # Finally return it as a string
    asciiChars.join('')
end

# Ask user for input
puts "Enter a string: "
strInput = gets.chomp

puts "Enter a shift factor (number):"
numInput = gets.chomp
numInput = numInput.to_i


puts caesar_cipher(strInput, numInput)