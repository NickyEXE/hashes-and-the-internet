class Book

  attr_reader :title, :authors, :description, :published_date

  def initialize(hash)
    @title = hash["volumeInfo"]["title"]
    @authors = hash["volumeInfo"]["authors"] || []
    @description = hash["volumeInfo"]["description"] || "No description available"
    @published_date = hash["volumeInfo"]["publishedDate"] || "Not available"
  end

  def print_summary
    puts title
    puts authors.any? ? authors.join(" & ") : "No authors listed"
    puts "#{description[0..100]}..."
  end

  def print_details
    puts "Title: #{title}"
    puts "Authors: #{authors.any? ? authors.join(" & ") : "No authors listed"}"
    puts "Publish Date: #{published_date}"
    puts "Description #{description}"
  end

end

# search.books.each do |book|
#   # binding.pry
#   authors = book["volumeInfo"]["authors"] || []
#   description = book["volumeInfo"]["description"] || "No description available"
#   puts book["volumeInfo"]["title"]
#   puts authors.any? ? authors.join(" & ") : "No authors listed"
#   puts "#{description[0..100]}..."
#   puts "*"*15
# end
