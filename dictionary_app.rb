require "unirest"

while true

system "clear"

puts " Feel free to increase your knowledge."
puts "Type any word you would like to know more about :"
input_word= gets.chomp 
response = Unirest.get("http://api.wordnik.com:80/v4/word.json/#{input_word}/definitions?limit=200&includeRelated=true&useCanonical=false&includeTags=false&api_key=a2a73e7b926c924fad7001ca3111acd55af2ffabf50eb4ae5
")
response_top_example = Unirest.get("http://api.wordnik.com:80/v4/word.json/#{input_word}/topExample?useCanonical=false&api_key=a2a73e7b926c924fad7001ca3111acd55af2ffabf50eb4ae5
")
response_pronunciation = Unirest.get("http://api.wordnik.com:80/v4/word.json/#{input_word}/pronunciations?useCanonical=false&limit=50&api_key=a2a73e7b926c924fad7001ca3111acd55af2ffabf50eb4ae5
")

definition = response.body[0]["text"]
top_example = response_top_example.body["text"]
pronunciation= response_pronunciation.body[0]["raw"]


p definition
p top_example
p pronunciation

puts "If you want to quit press q"
puts "Press any key to continue"
input_keyword = gets.chomp 
 if 
  input_keyword == "q"
   break
 end
end