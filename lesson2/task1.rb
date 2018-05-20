puts "Hi. Fill it in : your name, your secondname and how old are you years"
you_name = gets.chomp #name
you_sname = gets.chomp #secname
you_old = gets.to_s #old
puts "Yours name is: " + you_name + ", your secondname: " + you_sname + ", and you're " + you_old + " years old"
you_sum = you_name.length.to_i + you_old.to_i 
puts "The sum of the letters of your name and years equal: " + you_sum.to_s
