###### Homework 1 #####################################
#                                                     #
# Grupo:                                              #
#       Victor Wichmann Raposo 9298020                #
#       João Francisco Lino Daniel 7578279            #
#######################################################

# Part 1
def sum arr
    arr.sum
end

def max_2_sum arr
    return 0 if arr.size == 0
    return arr[0] if arr.size == 1
    arr.max(2).sum
end

def sum_to_n? (arr, n)
    arr.any? do
        |elt| arr.any? do
            |x| arr.find_index(x) != arr.find_index(elt) && x == (n - elt)
        end
    end
end

# Part 2

def hello(name)
    "Hello, " + name
end

def starts_with_consonant? s
    s =~ /^[[:alpha:]]/i  && (s !~ /^[aeiou]/i)
end

def binary_multiple_of_4? s
    s == '0' || (s =~ /^[01]+$/ && s =~ /00$/)
end

# Part 3

class BookInStock
    def initialize(isbn, price)
        raise ArgumentError if (isbn == '') || (price <= 0)
        @isbn = isbn
        @price = price
    end

    attr_accessor(:isbn, :price)

    def price_as_string
        s = price.to_s.split(".")
        if s[1] == nil
            s[1] = "00"
        elsif s[1].length >= 2  
            s[1] = s[1][0...2]
        else
            s[1] = "#{s[1]}" + "0"
        end
        "$" + s[0] + "." + s[1]
    end
end

puts starts_with_consonant?('v')
