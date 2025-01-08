module Validators
  class BookValidator
    def self.present?(book)
      book.title != '' && book.author != '' 
    end
  end
end