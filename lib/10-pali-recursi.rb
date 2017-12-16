def pali(string)
	return true  if (string.length < 2)
	string = string.downcase.gsub(" ","").split("")
	(string[0] == string[-1]) ? (pali(string[1..-2].join)) : (return false)
end

