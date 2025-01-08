class LibraryManager
  def initialize(library)
    @library = library
  end

  def register_book(book)
    @library.books << book
  end

  def register_user(user)
    @library.users << user
  end
end