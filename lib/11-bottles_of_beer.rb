def beer(n)
	case n
	when 0 then puts "No more bottles of beer on the wall"
	when 1  
		puts "One bootle of beer on the wall"
		beer(n-1)
	else
		puts "#{n} bottles of beer on the wall"
		beer(n-1)
	end
end

puts beer(4)