def fizzbuzz(num)
  if num % 15 == 0
    return "fizzbuzz"
  elsif num % 3 == 0
    return "fizz"
  elsif num % 5 == 0
    return "buzz"
  end
end
