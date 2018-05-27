if File.exist? "Poem.txt"
   File.foreach("Poem.txt") do  |line| 
   	puts line.chomp
end
else
	puts "File doesn't exist"
end