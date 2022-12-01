require 'sqlite3'

class Student
  def initialize(name='', registration_number='')
    @name = name.strip
    @registration_number = registration_number.strip
  end

  def check_name
    if /\d/.match(@name)
      return 'Invalid name.'
    end
    if @name == ''
      return 'You must insert a name.'
    end
  end

  def check_registration_number
    if /\D/.match(@registration_number)
      return 'Invalid registration number.'
    end
    if @registration_number == ''
      return 'You must insert a registration number.'
    end
  end

  def check_registration_number_exists
    db = SQLite3::Database.open 'test.db'
    db.results_as_hash = true

    db.execute 'DROP TABLE students'
    db.execute 'CREATE TABLE IF NOT EXISTS students(name TEXT, registration_number TEXT)'
    db.execute 'INSERT INTO students (name, registration_number) VALUES (?, ?)', 'Aldo', '001'
    
    result = db.execute 'SELECT name, registration_number FROM students WHERE registration_number=?', @registration_number

    if result != []
      if result[0]['registration_number'] == @registration_number
        return 'This registration number already exists.'
      end
    end
  end

  def save_data
    db = SQLite3::Database.open 'test.db'
    db.results_as_hash = true
    db.execute 'CREATE TABLE IF NOT EXISTS students(name TEXT, registration_number TEXT)'
    
    if check_name == nil && check_registration_number == nil
      if check_registration_number_exists == nil
        db.execute 'INSERT INTO students (name, registration_number) VALUES (?, ?)', @name, @registration_number
        return 'Registration saved.'
      end
    end
    return 'Something went wrong. Try again.'
  end

end
