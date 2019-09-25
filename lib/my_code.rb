def make_sandwich(element1, element2)
  base = "A #{element1} and #{element2} sandwich"
  puts base
  yield
  base
end

make_sandwich("chicken", "a sense of malaise") do |innards|
  puts "making some tasty stuff..."
end

def make_sandwich_2(element1, element2)
  base = "A #{element1} and #{element2}"
  base2 = "Only a #{element1}"
  puts yield(base2)
end

make_sandwich_2("gator", "gumbo") do |innards|
  "#{innards} on rye"
  puts "aaa"
end


array = [2, -4, 8, 10]

def my_own_map(array)
  yield(array.join(" "))
end

my_own_map(array) {|a| p a }
