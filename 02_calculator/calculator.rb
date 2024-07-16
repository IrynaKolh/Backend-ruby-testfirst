def add(a, b)
    a + b
end

def subtract(a, b)
    a - b
end

def sum(arr)  
    if(arr.length <= 0)
        return 0
    end
    return arr.inject { |memo, n| memo + n }      
end

def multiply(*numbers)
    numbers.reduce(1) { |memo, n| memo * n }
end

def power(base, exponent)
    base ** exponent
end

def factorial(n)
    (1..n).inject(:*) || 1
end

