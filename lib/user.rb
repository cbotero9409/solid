require_relative 'validators/user_validator'

# Class to represent users
class User
  attr_accessor :name, :type

  def initialize(name, type = 'general')
    @name = name
    @type = type

    validate!
  end

  private 

  def validate!
    Validators::UserValidator.validate(self)
  end
end