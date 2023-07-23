require "json"

file_path = File.join(".", "the_most_popular_language.json")

languages = JSON.parse(File.read(file_path, encoding: "UTF-8"))

# Top list of programming languages
puts "Top list of programming languages"
puts
languages.sort_by { |lang| lang[1] }.reverse.each.with_index(1) do |pair, index|
  # puts index
  puts "#{index}. #{pair[0]} - #{pair[1]} %"
end

# The most popular language only
the_most_popular_language = languages.sort_by { |lang| lang[1] }.reverse.first

puts
puts("The most popular language: #{the_most_popular_language[0]} " +
     "- #{the_most_popular_language[1]} %")
