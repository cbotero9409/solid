require_relative '../notifications/library_notifications'

class LibraryManager
  include LibraryNotifications

  def initialize(library)
    @library = library
    @book_validator = Validators::BookValidator.new
  end

  def register_book(book)
    @library.books << book
  end

  def register_user(user)
    @library.users << user
  end
end