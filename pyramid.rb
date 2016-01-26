```ruby
height = ARGV[0]
output = ""
height.to_i.times do |i|
  n = i + 1
  space = height.to_i - n
  output << " " * space 
  output << "*" * n * 2
  output << "\n"
end
puts output
```
