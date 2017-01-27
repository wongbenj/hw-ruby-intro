# Part 1

def sum array
  if array.empty?
    return 0
  else
    sum = 0
    array.next {|x| sum += x}
    return sum
  end
end

def max_2_sum array
  if array.empty?
    return 0
  elsif array.length == 1
    return array[0]
  else
    array.sort! 
    return array[array.length - 1] + array[array.length - 2]
  end
end

def sum_to_n? array, n
  if array.empty? && n == 0
    return true
  else
    array.combination(2).any? {|a, b| a + b == n }
  end
end

# Part 2

def hello(name)
  "Hello, " + name
end

def starts_with_consonant? s
  if s.empty?
  	return false
  elsif ( /[a-z]/ =~ s[0].downcase && /[^aeiou]/ =~ s[0].downcase)
    return true
  else
    return false
  end
end

def binary_multiple_of_4? s
  if /^[01]*(00)$/.match(s) || s === "0"
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
  def initialize isbn price
   @isbn = isbn  
   @price = price  
     if(@isbn === "" || @price<=0)
        raise ArgumentError  
     end  
   end  
  
  #setter and getter for isbn and price  
  def set_isbn(isbn)  
    @isbn = isbn  
    if @isbn === ""  
      raise ArgumentError  
    end  
  end  
  
  def set_price(price)  
    @price = price  
    if @price <= 0  
      raise ArgumentError  
    end  
  end  
  
  def get_isbn  
    puts @isbn  
  end  
  
  def get_price  
    puts @price  
  end  
  
  def price_as_string 
    puts "$" + format("%.2f", @price)  
  end  
end  
