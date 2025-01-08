# Class to represent users
class User
  attr_accessor :name, :type

  def initialize(name, type = 'general')
    @name = name
    @type = type
  end
end