require_relative 'base_validator'

module Validators
  class BookValidator < BaseValidator
    def self.validate(book)
      book.title != '' && book.author != '' 
    end
  end
end