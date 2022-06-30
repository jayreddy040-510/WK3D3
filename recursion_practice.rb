def inject_upcase(str)

    str.chars.inject("") do |str, char|
        str + char.upcase
    end

end

def recursive_upcase(str)

    return str.upcase if str.length == 1
    str[0].upcase + recursive_upcase(str[1..-1])
end

def inject_reverse(str)

str.chars.inject {|acc, cur| cur + acc}

end

def recursive_reverse(str)

    return str[0] if str.length == 1
    str[-1] + recursive_reverse(str[0..-2])
end

def quick_sort(arr)

    return arr if arr.length <= 1

    left = arr[1..-1].select do |x|
        x < arr[0]
    end

    right = arr[1..-1].select do |x|
        x >= arr[0]
    end

    quick_sort(left) + [arr[0]] + quick_sort(right)

    
end


def sum_to(n)

    return nil if n < 0

    if n == 1
        return 1
    end

    n + sum_to(n-1)
end



# puts sum_to(5)  # => returns 15
# puts sum_to(1)  # => returns 1
# puts sum_to(9)  # => returns 45
# p sum_to(-8)  # => returns nil



def add_numbers(arr)

    return nil if arr.length == 0
    return arr[0] if arr.length == 1
    
    arr[0] + add_numbers(arr[1..-1])

    
end


# puts add_numbers([1,2,3,4]) # => returns 10
# puts add_numbers([3]) # => returns 3
# puts add_numbers([-80,34,7]) # => returns -39
# p add_numbers([]) # => returns nil


def gamma_fnc(n)

    return nil if n < 1
    return 1 if n == 1 

    (n-1) * gamma_fnc(n-1)
    
    
end

# p gamma_fnc(0)  # => returns nil
# puts gamma_fnc(1)  # => returns 1
# puts gamma_fnc(4)  # => returns 6
# puts gamma_fnc(8)  # => returns 5040


def ice_cream_shop(flavors, flavor)

    return false if flavors.length == 0
    return true if flavors[0] == flavor

    flavors[0] == flavor || ice_cream_shop(flavors[1..-1], flavor)
    
    
end


print ice_cream_shop(['vanilla', 'strawberry'], 'blue moon')  # => returns false
puts
print ice_cream_shop(['pistachio', 'green tea', 'chocolate', 'mint chip'], 'green tea')  # => returns true
puts
print ice_cream_shop(['cookies n cream', 'blue moon', 'superman', 'honey lavender', 'sea salt caramel'], 'pistachio')  # => returns false
puts
print ice_cream_shop(['moose tracks'], 'moose tracks')  # => returns true
puts
print ice_cream_shop([], 'honey lavender')  # => returns false



def recursive_reverse(str)
    return "" if str.length == 0
    return str[0] if str.length == 1
    str[-1] + recursive_reverse(str[0..-2])
end

# puts recursive_reverse("house") # => "esuoh"
# puts recursive_reverse("dog") # => "god"
# puts recursive_reverse("atom") # => "mota"
# puts recursive_reverse("q") # => "q"
# puts recursive_reverse("id") # => "di"
# p recursive_reverse("") # => ""

    
    
# arr1 = (1..100).to_a.shuffle!


# puts inject_upcase("i love my mummy")
# puts recursive_upcase("banana")
# puts inject_reverse("banana")
# puts recursive_reverse("terracotta pie")
# puts
# puts
# print arr1
# puts
# puts
# puts
# print quick_sort(arr1)