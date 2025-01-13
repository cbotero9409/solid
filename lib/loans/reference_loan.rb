require_relative 'loan'

class ReferenceLoan < Loan
  def max_days
    allowed_days
  end

  private

  def allowed_days
    1
  end
end