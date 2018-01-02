def roman(number, string=[])
	roman_mapping = {
	  1000 => "M",
	  900  => "CM",
	  500  => "D",
	  400  => "CD",
	  100  => "C",
	  90 	 => "XC",
	  50   => "L",
	  40   => "XL",
	  10   => "X",
	  9 	 => "IX",
	  5 	 => "V",
	  4 	 => "IV",
	  1 	 => "I"
	}

	if roman_mapping.has_key?(number)
		string << roman_mapping[number]
	else
		if number < 4
			string << roman_mapping[1]
			roman(number -1, string)
			# puts number
		elsif number > 5 and number < 10
			string << roman_mapping[5]
			roman(number -5, string)
		elsif number > 10 and number < 40
			string << roman_mapping[10]
			roman(number -10, string)
		elsif number > 40 and number < 50
			string << roman_mapping[40]
			roman(number -40, string)
		elsif number > 50 and number < 90
			string << roman_mapping[50]
			roman(number -50, string)
		elsif number > 90 and number < 100
			string << roman_mapping[90]
			roman(number -90, string)
		elsif number > 100 and number < 400
			string << roman_mapping[100]
			roman(number -100, string)
		elsif number > 400 and number < 500
			string << roman_mapping[400]
			roman(number -400, string)
		elsif number > 500 and number < 900
			string << roman_mapping[500]
			roman(number -500, string)
		elsif number > 900 and number < 1000
			string << roman_mapping[900]
			roman(number -900, string)
		elsif number > 1000
			string << roman_mapping[1000]
			roman(number -1000, string)
		end
	end
	return string.join

end

# puts roman 992

# puts roman 10

# 100.times { |i| puts roman(i+1) }