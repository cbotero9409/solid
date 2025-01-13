require_relative 'basic_library_manager'
require_relative 'user_management'

class FullLibraryManager < BasicLibraryManager
  include UserManagement
end