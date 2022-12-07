class DbConfig

  def initialize
    @db = SQLite3::Database.open 'test.db'
    db.execute 'DROP TABLE IF EXISTS alunos'
  end

  def database
    @db
  end
end
