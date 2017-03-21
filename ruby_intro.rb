# When done, submit this entire file to the autograder.
# # Part 1
def sum arr
    if arr.length == 0 
        return 0
    end
    arr.reduce(:+)
end

def max_2_sum arr
    l = arr.length
    if l == 0
        return 0
    elsif l == 1
        return arr.max
    else l > 1
        return arr.max(2).reduce(:+)
    end
end

def sum_to_n? (arr, n)
    arr.any? {
        |elt| arr.any? { 
            |x| arr.find_index(x) != arr.find_index(elt) && x == (n - elt)
        }
    }
end

# Part 2

def hello(name)
    "Hello, " + name
end

def starts_with_consonant? s
    (s =~ /^([b-d]|[B-D]|[f-h]|[F-H]|[j-n]|[J-N]|[p-t]|[P-T]|[v-z]|[V-Z])/) != nil 
end

def binary_multiple_of_4? s
    (s =~ /^[01]+$/) != nil && s.to_i(2) % 4 == 0
end

# Part 3

class BookInStock
    def initialize(isbn, price)
        if (isbn == '') || (price < 0) ; raise ArgumentError ; end
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

