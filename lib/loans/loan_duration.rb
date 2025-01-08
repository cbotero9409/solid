module LoanDuration
  def days_borrowed
    ((Time.now - loan_date) / (60 * 60 * 24)).to_i
  end

  def calculate_fine
    overdue_days = [days_borrowed - allowed_days, 0].max
    overdue_days * per_day_rate
  end

  private

  def allowed_days
    14
  end

  def per_day_rate
    0.5
  end
end