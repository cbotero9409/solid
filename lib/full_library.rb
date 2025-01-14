require_relative 'library'
# require_relative 'managers/full_library_manager'
# require_relative 'managers/loan_manager'

class FullLibrary < Library
  attr_accessor :users, :loans

  def initialize(manager)
    super(manager)
    @users = []
    @loans = []
    # @library_manager = FullLibraryManager.new(self)
    # @loan_manager = LoanManager.new(self)
  end

  def register_user(user)
    # @library_manager.register_user(user)
    @manager.register_user(user)
  end

  def loan_book(book, user)
    # @loan_manager.loan_book(book, user)
    @manager.loan_book(book, user)
  end

  def return_book(book)
    # @loan_manager.return_book(book)
    @manager.return_book(book)
  end
end