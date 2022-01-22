class Film
  def initialize(title, director, year)
    @title = title
    @director = director
    @year = year
  end

  def get_details
    puts "Title: #{@title}"
    puts "Director: #{@director}"
    puts "Year released: #{@year}"
  end
end

interstellar = Film.new("Interstellar", "Christopher Nolan", 2014)
interstellar.get_details