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

# Falta eliminar simbolos como #
def starts_with_consonant? s
    (s =~ /^[^AaEeIiOoUu\d\s]/) != nil
end

def binary_multiple_of_4? s
    (s =~ /^[01]+$/) != nil && s.to_i(2) % 4 == 0
end

# Part 3
#
class BookInStock
end

