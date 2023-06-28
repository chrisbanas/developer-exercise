class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    str.gsub(/\b\w{5,}\b/i) do |word|
      last_char = word[-1]
      if last_char.match?(/[[:punct:]]/)
        if word[0] == word[0].upcase
          "Marklar" + last_char
        else
          "marklar" + last_char
        end
      else
        if word[0] == word[0].upcase
          "Marklar"
        else
          "marklar"
        end
      end
    end
  end

  # The code uses regular expressions to replace words in a string that have five or more characters with "marklar" or "Marklar" based on their capitalization and appends the last character if it is a punctuation mark, resulting in a modified string. The time complexity is O(n + m), where n is the length of the input string and m is the number of matched words.

  # In the worst case scenario where all words in the input string exceed five characters, the number of matched words can be proportional to the length of the input string. In such cases, the time complexity can be approximated as O(n + n) or simply O(n).

  # Overall, the code has a linear time complexity with respect to the length of the input string.


  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    return 0 if nth <= 2

    fib_prev = 1
    fib_curr = 1
    sum_even = 0

    while nth > 2
      fib_next = fib_prev + fib_curr
      sum_even += fib_next if fib_next.even?
      fib_prev, fib_curr = fib_curr, fib_next
      nth -= 1
    end

    sum_even

  end

end

# We start with the first two Fibonacci numbers (fib_prev and fib_curr) set to 1. Then, we iteratively calculate the next Fibonacci number fib_next and check if it's even. If it is, we add it to the sum_even. We update fib_prev and fib_curr accordingly, and decrement nth in each iteration.

# This approach only computes the necessary Fibonacci numbers and directly adds the even numbers to the sum_even variable. It avoids storing and iterating over the entire sequence, resulting in improved time efficiency.

# The time complexity of this code is O(n), which is the best we can achieve for finding the sum of even Fibonacci numbers up to the nth term.
