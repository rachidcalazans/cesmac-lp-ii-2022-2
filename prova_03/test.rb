require 'minitest/autorun'
require 'sqlite3'

# Prova Integrada - Nota da P3

class TestExercicio < Minitest::Test

  def test_db
    db = SQLite3::Database.open 'mercadinho.db'
    db.results_as_hash 
