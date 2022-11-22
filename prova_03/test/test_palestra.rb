

require 'minitest/autorun'
require 'yaml'

class Proposals < Minitest::Test
    def test_criar_arquivo
        texto = File.readlines("prova_03/proposals.txt").each_with_index.map do |linha|
            [linha = texto]

           assert_equal linha, texto          end
          puts texto
    end

    def test_track


    end

end