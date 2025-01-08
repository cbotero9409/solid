require_relative 'loan_duration'

# Class to handle book loans
class Loan
  include LoanDuration

  attr_reader :book, :user, :loan_date

  def initialize(book, user)
    @book = book
    @user = user
    @loan_date = Time.now
  end
end