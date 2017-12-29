fizzbuzz = fn
  (0,0,_) -> "FizzBuzz"
  (0,_,_) -> "Fizz"
  (_,0,_) -> "Buzz"
  (_,_,a) -> a
end

# fizzbuzz.(1,2,3)

more = fn n ->
  fizzbuzz.(rem(n, 3), rem(n, 5), n)
end

more.(10)
more.(11)
more.(12)
more.(13)
more.(14)
more.(15)
more.(16)
