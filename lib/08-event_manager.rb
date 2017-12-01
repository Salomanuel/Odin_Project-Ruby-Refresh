# contents = File.read "event_attendees.csv"
# # puts contents if File.exist?("event_attendees.csv")
# lines = File.readlines "event_attendees.csv"
# lines[1..-1].each do |line| 
# 	puts line.split(",")[2]
# end

require "csv"
require 'google/apis/civicinfo_v2'

civic_info 			= Google::Apis::CivicinfoV2::CivicInfoService.new
civic_info.key 	= 'AIzaSyClRzDqDh5MsXwnCWi0kOiiBivP6JsSyBw'


def clean_zipcode(zipcode)
	"#{'0'*(5 - zipcode.to_s.length)}#{zipcode.to_s}"
end

def legislators_by_zipcode(zip)
	civic_info 			= Google::Apis::CivicinfoV2::CivicInfoService.new
	civic_info.key 	= 'AIzaSyClRzDqDh5MsXwnCWi0kOiiBivP6JsSyBw'

	begin
		legislators = civic_info.representative_info_by_address(
			address: 	zip,
			levels:		'country',
			roles:		['legislatorUpperBody', 'legislatorLowerBody'])
		legislators = legislators.officials
		legislator_names = legislators.map(&:name)
		legislators_string = legislator_names.join(", ")
	rescue
		"Pisellonio"
	end
end

puts "EventManager Initialized!"

contents = CSV.open "event_attendees.csv", headers: true, header_converters: :symbol

contents.each do |row|
	zipcode = clean_zipcode(row[:zipcode])
	name 		= row[:first_name]
	# puts "#{row[2]}\t#{"\t" if row[2].length < 8} #{zipcode}"
	legislators = legislators_by_zipcode(zipcode)	
	puts "#{name} #{zipcode} #{legislators}"
end

