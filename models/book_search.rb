class BookSearch


  attr_reader :books

  def initialize(input)
    search(input)
  end

  def search(input)
    url = "https://www.googleapis.com/books/v1/volumes?q=#{input}"
    # turn the string of the url into a URI
    uri = URI.parse(url)
    # make a request with the uri using Net::HTTP
    response = Net::HTTP.get(uri)
    # turn it into a hash with the json library
    json = JSON.parse(response)
    @books = json["items"]
  end

end
