require "json"

file_path = File.join(".", "the_most_popular_language.json")

languages = JSON.parse(File.read(file_path, encoding: "UTF-8"))

the_most_popular_language = languages.sort_by { |lang| lang[1] }.last


puts("The_most_popular_language: #{the_most_popular_language[0]} " +
     "with #{the_most_popular_language[1]} %")
