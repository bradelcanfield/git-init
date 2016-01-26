```ruby
cats = 100

hats = Array.new(cats, 1)

# puts cats

def take_hat hat
  if hat == 0
     1
  else
     0
  end
end

(1..cats).each do |pass_by|
  hats.each_index do |index|
    hats_off = (index + 1) % pass_by

    if hats_off == 0
     hats[index] = take_hat hats[index]
    end
  end
end

hats.each_with_index do |cat, index|
  puts "Cat #{index + 1} has no hat." if cat == 0
end
```
