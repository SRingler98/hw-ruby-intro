# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
    return_value = 0

      if arr.length == 0
            then
                return 0
                  end

        for i in arr
              return_value = return_value + i
                end
          return return_value
end

def max_2_sum arr
  if arr.length == 0
    then
        return 0
    end

  if arr.length == 1
    then
      return arr[0]
  end

  if arr.length >= 2
    then
    first_var = arr[0]
    second_var = arr[1]

    temp_arr = arr[2..arr.length]

    if arr.length >= 3
      then
      for i in temp_arr
        if i >= first_var
          then
          second_var = first_var
          first_var = i          
        end
      end
    end
  end
return (first_var + second_var)
end

def sum_to_n?(array, n)
  if array.length == 0
    then
      return false
    end

  if array.length == 1
    then
      return false
  end

  count = 1

  for i in array
    for j in array[count..array.length]
      if (j + i) == n
        then
          return true
      end
    end
    count = count + 1
  end

  return false
end

# Part 2

def hello(name)
  output = "Hello, "
  output << name
  return output
end

def starts_with_consonant? s
  if s.length == 0
    then
    return false
  end

  cons = "bcdfghjklmnpqrstvwxyz".split('')

  char = s[0].capitalize
  for item in cons
    if item.capitalize == char
      then
      return true
    end
  end
  return false
end

def binary_multiple_of_4? s  
  number = 0
  length = s.length
  
  if length == 0
    then
    return false
  end
  
  count = 0

  lang = s.split('')

  for char in lang
    if char != "0" && char != "1"
      then
      return false
    end

    if char == "1"
      then
      number = number + (2**(length-count-1))
    end
    count = count + 1
  end

  return (number % 4 == 0)
end

# Part 3

class BookInStock

  def initialize(isbn, price)

    raise ArgumentError.new(
      "Expected a string for first argument, got #{isbn} instead"
    ) if !isbn.instance_of?(String)

    raise ArgumentError.new(
      "Expected a non-empty int for second argument"
    ) if price == 0

    raise ArgumentError.new(
      "Expected a non-empty string for first argument"
    ) if isbn == ""

    raise ArgumentError.new(
      "Expected a non-negative value for second argument, got #{price} instead"
    ) if price < 0

    @book_isbn = isbn
    @book_price = price
  end

  # isbn getter
  def isbn
    @book_isbn
  end

  # isbn setter
  def isbn=(value)
    @book_isbn = value
  end

  def price
    @book_price
  end

  def price=(value)
    @book_price = value
  end

  def price_as_string
    return "$#{'%.2f' % @book_price}"
  end

end
