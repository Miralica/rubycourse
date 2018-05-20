a = [10, 12, 13, 16, 17, 17, 31]
new_a = a.select {|i| i >= 14}.reject {|i| i.even?}
b = new_a.map {|f| 1.0 / f}
puts new_a
puts b

