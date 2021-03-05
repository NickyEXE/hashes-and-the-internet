require 'pry'
require 'open-uri'
require 'net/http'
# http-party, faraday, just writing a curl request
require 'json'
require_relative "./models/book_search.rb"
require_relative "./models/book.rb"
require_relative "./models/cli.rb"

CLI.new

# puts "What do you want to search for?"
# input = gets.strip
# search = BookSearch.new(input)
# books = search.books.map{|book_hash| Book.new(book_hash)}
# books.each do |book|
#   puts "*" * 15
#   book.print_summary
# end

# search.books.each do |book|
#   # binding.pry
#   authors = book["volumeInfo"]["authors"] || []
#   description = book["volumeInfo"]["description"] || "No description available"
#   puts book["volumeInfo"]["title"]
#   puts authors.any? ? authors.join(" & ") : "No authors listed"
#   puts "#{description[0..100]}..."
#   puts "*"*15
# end

# binding.pry
