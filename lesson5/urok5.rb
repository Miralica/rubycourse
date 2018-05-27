class Human
 attr_reader :name
 attr_accessor :age,:city
 def initialize (myname, myage , mycity)
 	@name = myname
 	@age = myage
 	@city = mycity
 end
 def city=(newcity)
 	@city ||= 1
 	@city = newcity if newcity.lenght > 1
 end
end 
class Pupil < Human
	attr_accessor :class
	def class=(myclass)
		@class = myclass if myclass > 0 and myclass < 12
		end
		def age=(myage)
			@age = myage if myage > 0  and myage < 19
		end
end
human1 = Human.new("Michail",16,"Moscow")
pupil1 = Pupil.new("Anna",10,"Ufa")
pupil1.class = 3
puts human1.name
puts human1.age
puts human1.city 
puts pupil1.class
#human1.name = "Miha"man1.name = "Miha"
#puts human1.nameuts human1.name Это все ошибка, так как name можно только читать (reader)

