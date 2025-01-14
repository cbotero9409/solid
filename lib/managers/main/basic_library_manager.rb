require_relative '../../notifications/library_notifications'
require_relative '../modules/book_management'

class BasicLibraryManager
  include LibraryNotifications
  include BookManagement

  def initialize(library)
    @library = library
  end  
end