module Validators
  class BaseValidator
    def self.validate(_object)
      raise NotImplementedError, "The `validate` method must be implemented in #{self.class}"
    end
  end
end