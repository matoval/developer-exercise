class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    # TODO: Implement this method
    split_string = str.split
    result = split_string.map { |i| 
    if i.length > 4 && /[[:upper:]]/.match(i)
      if i.index( /[^[:alnum:]]/ )
        new_string = "Marklar" + i[i.index( /[^[:alnum:]]/ )]
      else
        new_string = "Marklar"
      end
      i = new_string
    elsif i.length > 4
      if i.index( /[^[:alnum:]]/ )
        new_string = "marklar" + i[i.index( /[^[:alnum:]]/ )]
      else
        new_string = "marklar"
      end
      i = new_string
    else
      i
    end
    }
    return result.join(" ")
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    # TODO: Implement this method
    arr = []
    sum = 0
    while arr.length < nth
      if (arr.length < 2) 
        arr.push(1)
      else
        next_num = (arr[arr.length - 1]) + (arr[arr.length - 2])
        if (next_num % 2 == 0) 
          sum = sum + next_num
        end
        arr.push(next_num)
      end
    end
    return sum
  end
  even_fibonacci(19)
end
