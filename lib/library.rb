require_relative 'managers/library_manager'
require_relative 'managers/loan_manager'

# Main class to manage the library
class Library

  attr_accessor :books, :users, :loans

  def initialize
    @books = []
    @users = []
    @loans = []
    @library_manager = LibraryManager.new(self)
    @loan_manager = LoanManager.new(self)
  end

  def register_book(book)
    @library_manager.register_book(book)
  end

  def register_user(user)
    @library_manager.register_user(user)
  end

  def loan_book(book, user)
    @loan_manager.loan_book(book, user)
  end

  def return_book(book)
    @loan_manager.return_book(book)
  end
end
