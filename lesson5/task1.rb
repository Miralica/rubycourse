module Print
	attr_accessor :name 
	attr_accessor :sername
    attr_accessor :date
	def printName
		puts "Name: #{@name}"
		puts "Sername: #{@sername}"
	end
end
	class Users
		include Print
		attr_accessor :name 
		attr_accessor :sername
		attr_accessor :date
		def initialize (myname, mysername,mydate)
			@name = myname
			@sername = mysername
			self.date = mydate
		end
	end
    class Classes < Users
    	attr_accessor :class 
    	attr_accessor :pupils
    	def initialize (myclass)
    		@class = myclass
    		@pupils = []
    	end
    	def add_pupils(*new_pupils)
    		@pupils += new_pupils
    	end
    	def each
    		pupils.each{|ppl| yield ppl}
    	end

    end



pupil1 = Users.new("Michail","Magpies",2001)
pupil2 = Users.new("Michel","Sorolin",2001)
pupil3 = Users.new("Miha","Soroka",2001)

pupil1.printName
pupil2.printName
pupil3.printName

class10 = Classes.new(10)
class10.add_pupils(pupil1,pupil2,pupil3)
p class10.pupils