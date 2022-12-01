require 'sqlite3'

class Register

  attr_accessor :name, :register, :student

  def initialize(name, register)
    open_db()

    if not (name.match(/[0-9*#+]+/))
      @name = name
    else
      raise StandardError.new 'Name contain numbers'
    end

    if(register.is_a? Integer)
      @register = register
    end

    insert_data_db(@name, @register)

    @student = @db.execute 'SELECT name, register from students WHERE register=?', @register
  end

  def open_db
    @db = SQLite3::Database.open 'college.db'
    @db.results_as_hash = true
    @db.execute 'CREATE TABLE IF NOT EXISTS students(register INTEGER NOT NULL PRIMARY KEY ,name TEXT)'
  end

  def insert_data_db(name, register)
    @db.execute 'INSERT INTO students(name, register) VALUES (?, ?)', name, register
  end
end
