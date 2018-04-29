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
    school1.add_pupils(pupil1,pupil2,pupil3,pupil4,pupil5)
    p school1.pupils