require 'minitest/autorun'
require 'sqlite3'

class TestDB < Minitest::Test

  def test_create_db
    db = SQLite3::Database.new "test.db"

    assert_equal true, File.exist?('test.db')
  end

  def test_create_table
    db = SQLite3::Database.new "test.db"
    db.execute("drop table test")
    db.execute("create table if not exists test(id integer, name string)")
    query = db.execute("select * from test")

    assert_equal [], query
  end

  def test_insert_data
    db = SQLite3::Database.new "test.db"
    db.execute("drop table test")
    db.execute("create table if not exists test(id integer, name string)")

    names = ['Jay', 'Kay', 'Ray']
    for i in 1..3
      db.execute("insert into test values(?, ?)", i, names[i-1])
    end

    query = db.execute("select * from test")

    assert_equal 1, query[0][0]
    assert_equal 'Kay', query[1][1]
    assert_equal [3, 'Ray'], query[2]
  end

  def test_update_data
    db = SQLite3::Database.new "test.db"
    db.execute("drop table test")
    db.execute("create table if not exists test(id integer, name string)")

    names = ['Jay', 'Kay', 'Ray']
    for i in 1..3
      db.execute("insert into test values(?, ?)", i, names[i-1])
    end

    db.execute("update test set name = 'Tray' where id = 1")

    query = db.execute("select * from test")

    assert_equal 'Tray', query[0][1]
  end

  def test_delete_data
    db = SQLite3::Database.new "test.db"
    db.execute("drop table test")
    db.execute("create table if not exists test(id integer, name string)")

    names = ['Jay', 'Kay', 'Ray']
    for i in 1..3
      db.execute("insert into test values(?, ?)", i, names[i-1])
    end

    db.execute("update test set name = 'Tray' where id = 1")

    db.execute("delete from test where name = 'Ray'")

    query = db.execute("select * from test")

    assert_nil query[2]
  end
  
end
