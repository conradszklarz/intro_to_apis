require 'unirest'

system "clear"

puts "Your in the REDDIT App now."



# while true
#   print "Enter a word: "
#   input_word = gets.chomp

  
  puts ""
  
  

  response = Unirest.get("https://www.reddit.com/r/programming.json")

   x = response.body["data"]

   print x

#   .each_with_index do |definition, index|
#     puts 
#     puts
#   end

  
#   end

#   puts
#   puts "Enter q to quit, and other key to continue."
#   input_option = gets.chomp
  
#   if input_option == "q"
#     system "clear"
#     puts "Thank you for using the REDDIT App."
#     break
#   end
# end