require_relative 'basic_library_manager'
require_relative '../modules/user_management'
require_relative '../manager_interface'

class FullLibraryManager < BasicLibraryManager
  include ManagerInterface
  include UserManagement
end