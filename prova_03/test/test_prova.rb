require 'minitest/autorun'
require 'sqlite3'

class TestProva < Minitest::Test
    def test_db
        db = SQLite3::Database.open 'palestras.db'
    end
end