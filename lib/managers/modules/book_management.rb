module BookManagement
  def register_book(book)
    @library.books << book
  end
end