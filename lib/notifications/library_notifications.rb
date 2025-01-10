require_relative 'spanish_library_notifications'

module LibraryNotifications
  include SpanishLibraryNotifications
  
  def book_unavailable
    puts "The book is not available."
  end

  def book_not_valid
    puts "Book not valid"
  end
end