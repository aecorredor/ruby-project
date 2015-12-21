def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def sum(to_sum)
  to_sum.inject(0) { |a, e| a + e }
end

def multiply(*args)
  args.inject(1) { |a, e| a * e }
end

def power(a, b)
  a**b
end

def factorial(number)
  return 1 if number == 0
  result = 1
  for i in 1..number do
    result *= i
  end
  result
end
