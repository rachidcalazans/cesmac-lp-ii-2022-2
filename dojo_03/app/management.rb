require 'sqlite3'

class Management

  def initialize
    @db = SQLite3::Database.open 'college.db'
    @db.results_as_hash = true
  end

  def show_all
    @db.execute 'SELECT * FROM students'
  end

  def search_register(register)
    @db.execute 'SELECT name, register from students WHERE register=?', register
  end
end