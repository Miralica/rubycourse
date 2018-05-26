def pet
   puts "What you have pet (Dog or cat)?"
   pet = gets.chomp 
   puts "How old is pet ?"
   old = gets.to_i
end
def oldest
	one = 15
   if pet == "Cat"
    if old == 1 
   	 puts "Your cat is so old :" + one
    else
   	 if old.to_i == 2
   		 puts "Your cat is so old :" + one+9
   	 else
   		 if old.to_i > 2
   			 puts "Your cat is so old :" + one+9+(old.to_i*(old.to_i -2))
   			end
   		end
   	end
   end
end
pet
oldest