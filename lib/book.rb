# Class to represent books
class Book
  attr_accessor :title, :author, :genre

  def initialize(title, author, genre)
    @title = title
    @author = author
    @genre = genre
  end
end