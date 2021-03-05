class CLI

  def initialize
    prompt_search
  end

  def prompt_search
    puts "What do you want to search for?"
    input = gets.strip
    search = BookSearch.new(input)
    @books = search.books.map{|book_hash| Book.new(book_hash)}
    print_summary
    prompt_details
  end

  def print_summary
    @books.each_with_index do |book, index|
      puts "#{index + 1}."
      book.print_summary
      puts "*" * 15
    end
  end

  def prompt_details
    puts "Which book would you like to learn more about? [Use Number or say MENU]"
    input = gets.strip
    index = input.to_i - 1
    @books[index].print_details
    menu
  end

  def menu
    puts "Would you like to SELECT A BOOK, SEARCH AGAIN, or EXIT"
    input = gets.strip.upcase
    if input == "SEARCH AGAIN"
      prompt_search
    elsif input == "SELECT A BOOK"
      prompt_details
    elsif input == "EXIT"
      puts "See you again later!"
    else
      puts "I didn't understand that. Use one of the capitalized commands."
      menu
    end
  end

end
