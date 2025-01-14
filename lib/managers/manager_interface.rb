module ManagerInterface
  # def register_book(_book)
  #   raise NotImplementedError, "#{self.class} must implement the register_book method"
  # end

  def register_user(_user)
    raise NotImplementedError, "#{self.class} must implement the register_user method"
  end

  def loan_book(_book, _user)
    raise NotImplementedError, "#{self.class} must implement the loan_book method"
  end

  def return_book(_book)
    raise NotImplementedError, "#{self.class} must implement the return_book method"
  end
end