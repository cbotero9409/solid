<!-- irb

require_relative 'main'

library = Library.new(BasicLibraryManager)
library = FullLibrary.new(FullLibraryManager)
library = FullLibrary.new(LoanManager)
library = FullLibrary.new(FullLibraryLoanManager)

book = Book.new('The Great Gatsby', 'F. Scott Fitzgerald', 'Fiction')
library.register_book(book)

user = User.new('Alice', 'student')
library.register_user(user)

library.loan_book(book, user)

library.return_book(book) -->