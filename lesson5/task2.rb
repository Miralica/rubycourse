	class Human
		attr_accessor :name 
		attr_accessor :sername
		def initialize (myname, myage)
			@name = myname
			self.age = myage
		end
		def age=(newage)
			@age ||= 1
			@age = newage if newage > 6 and newage < 19
		end
	end
    class Pupil < Human
    	attr_accessor :school
    	attr_accessor :pupils
    	def initialize (myschool)
    		@school = myschool
    		@pupils = []
    	end
    	def add_pupils(*new_pupils)
    		@pupils += new_pupils
    	end
    	def each
    		pupils.each{|ppl| yield ppl}
    	end

    end
    pupil1 = Human.new("Michail",16)
    pupil2 = Human.new("Michel",15)
    pupil3 = Human.new("Miha",17)
    pupil4 = Human.new("Μιχαηλ",16)
    pupil5 = Human.new("Michahel",16)
    school1 = Pupil.new(1)
    school1.add_pupils(pupil1)
    school2 = Pupil.new(2)
    school2.add_pupils(pupil2)
    school3 = Pupil.new(3)
    school3.add_pupils(pupil3)
    school4 = Pupil.new(4)
    school4.add_pupils(pupil4)
    school5 = Pupil.new(5)
    school5.add_pupils(pupil5)
    puts "Ученики 1 школы :"
    p school1.pupils
    puts "Ученики 2 школы :"
    p school2.pupils
    puts "Ученики 3 школы :"
    p school3.pupils
    puts "Ученики 4 школы :"
    p school4.pupils
    puts "Ученики 5 школы :"
    p school5.pupils