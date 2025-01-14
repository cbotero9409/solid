require_relative 'basic_library_manager'
require_relative '../modules/user_management'
require_relative '../manager_interface'

class FullLibraryLoanManager < BasicLibraryManager
  include ManagerInterface
  include UserManagement
  
  def loan_book(book, user)
    if @library.books.include?(book)
      @library.loans << Loan.new(book, user)
      # @library.loans << ReferenceLoan.new(book, user)
      @library.books.delete(book)
    else
      book_unavailable_es
    end
  end

  def return_book(book)
     @library.loans.each do |loan|
      if loan.book == book
        @library.books << book
        @library.loans.delete(loan)
        return true
      end
    end
  end
end