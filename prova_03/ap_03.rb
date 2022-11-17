require 'minitest/autorun'
require 'yaml'

class Proposals < Minitest::Test
    def test_criar_arquivo_yaml
        tweets = IO.readlines("prova_03/proposals.txt").each_with_index.map do |line, line_num|
            [line_num, line]
          end
          puts tweets[0]
    end
    
end