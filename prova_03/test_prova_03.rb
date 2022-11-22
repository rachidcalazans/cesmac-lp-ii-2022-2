require 'minitest/autorun'
require 'yaml'

class Prova < Minitest::Test

     def test_prova_03
        lines = File.readlines('prova_03/proposals.txt')
        pp lines
        
    end

end