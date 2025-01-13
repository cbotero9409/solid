require_relative 'managers/basic_library_manager'


# Main class to manage the library
class Library
  attr_accessor :books

  def initialize
    @books = []
    @library_manager = BasicLibraryManager.new(self)
  end

  def register_book(book)
    @library_manager.register_book(book)
  end
end
