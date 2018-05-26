def age(hage, pet)
	res = 0
	case
	when hage ==1
		res = 15
	when hage == 2
		res = 15 + 9
	when hage > 2
		ad = 4 if pet ==1
		ad = 5 if pet ==2
		res = 24 + (hage - 2) * ad
	else
	end
    
