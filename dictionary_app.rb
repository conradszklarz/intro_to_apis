require "unirest"

system "clear"

puts

puts 
puts "You're in the Dictionary app now"
print "Enter a word:"
word = gets.chomp
puts "Defintions"
p word

 definition response = Unirest.get("http://api.wordnik.com:80/v4/word.json/#{word}/definitions?limit=200&includeRelated=true&useCanonical=false&includeTags=false&api_key=a2a73e7b926c924fad7001ca3111acd55af2ffabf50eb4ae5")

 definitions = response.body
 def_menu_count = 1
 definitions.each_with_index.do |definition, index|
 puts "#{index + 1} - #{definition["text"]}"



 pronunciation response = Unirest.get("http://api.wordnik.com:80/v4/word.json/#{word}/pronunciations?useCanonical=false&limit=50&api_key=a2a73e7b926c924fad7001ca3111acd55af2ffabf50eb4ae5")
 pronunciation = response.body
 pronunciation.each_with_index.do |pronunciation, index|
 puts "Pronunciation"
 puts pronunciation["text"]



 top_example response = Unirest.get("http://api.wordnik.com:80/v4/word.json/#{word}/topExample?useCanonical=false&api_key=a2a73e7b926c924fad7001ca3111acd55af2ffabf50eb4ae5")

 top_example = response.body
 puts "Top Example"
 puts top_example["text"]

end

puts
puts "Enter q to quit, and any other key to continue."
input_option = gets.chomp

end
 

