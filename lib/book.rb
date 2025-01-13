require_relative 'notifications/library_notifications'
require_relative 'validators/book_validator'

# Class to represent books
class Book
  include LibraryNotifications

  attr_accessor :title, :author, :genre

  def initialize(title, author, genre)
    @title = title
    @author = author
    @genre = genre

    validate!
  end

  private
  def validate!
    if Validators::BookValidator.validate(self)
      self
    else
      raise ArgumentError, "Invalid book data"
    end
  end
end