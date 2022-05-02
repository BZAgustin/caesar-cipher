# The program should have a substrings() method that takes a string and an array as arguments.
# It then tries to find any words that match the entirety or part of the string provided, 
# regardless of its casing ("Howdy!" matches "how")

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


def substrings(string, arr)
    # Save the string as an array of lowercase words
    string = string.downcase.split

    # Use 2D iteration to find any matches
    # Add them to the hash if they don't exist, increase them by 1 if they do
    resultHash = arr.reduce(Hash.new(0)) do |result, current|
        string.each do |word|
            if word.include?(current)
                result[current] += 1
                result
            end
        end
        result
    end

    # Return the resulting hash
    resultHash
end

puts substrings("Howdy partner! Sit down, how's it going?", dictionary)
    



