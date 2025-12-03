# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  sum = 0
  arr.each { |num| sum += num }
  return sum
end

def max_2_sum(arr)
  sorted = arr.sort.reverse
  return sorted[0].to_i + sorted[1].to_i
end

def sum_to_n?(arr, n)
  seen = {}
  arr.each do |num|
    return true if seen[n - num]
    seen[num] = true
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant?(s)
  return false if s.empty?
  first_char = s[0].downcase
  return first_char =~ /[b-df-hj-np-tv-z]/ ? true : false
end

def binary_multiple_of_4?(s)
  return false unless s =~ /\A[01]+\z/
  return s.to_i(2) % 4 == 0
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price

  def initialize(isbn, price)
    raise ArgumentError, 'ISBN cannot be empty' if isbn.empty?
    raise ArgumentError, 'Price must be greater than 0' if price <= 0
    @isbn = isbn
    @price = price
  end

  def price_as_string
    format("$%.2f", @price)
  end
end
# Part 1

def sum(arr)
  arr.reduce(0, :+)
end

def max_2_sum(arr)
  return 0 if arr.empty?
  return arr[0] if arr.length == 1
  arr.max(2).sum
end

def sum_to_n?(arr, n)
  return false if arr.length < 2
  # ใช้เซตช่วยจำว่าก่อนหน้ามีตัวที่ต้องการหรือยัง
  seen = {}
  arr.each do |x|
    return true if seen[n - x]
    seen[x] = true
  end
  false
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant?(s)
  !!(s =~ /\A(?=[a-zA-Z])[^aeiouAEIOU]/)
end

def binary_multiple_of_4?(s)
  return false if s !~ /\A[01]+\z/
  s.to_i(2) % 4 == 0
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price

  def initialize(isbn, price)
    raise ArgumentError if isbn.to_s.empty?
    raise ArgumentError if price.to_f <= 0
    @isbn = isbn
    @price = price.to_f
  end

  def price_as_string
    format("$%.2f", @price)
  end
end
