# require_relative 'managers/basic_library_manager'

# Main class to manage the library
class Library
  attr_accessor :books, :manager

  def initialize(manager)
    @books = []
    # @library_manager = BasicLibraryManager.new(self)
    @manager = manager.new(self)
  end

  def register_book(book)
    @manager.register_book(book)
  end
end
