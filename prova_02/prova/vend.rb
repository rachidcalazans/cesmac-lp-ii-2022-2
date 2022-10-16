class Vendi


    attr_reader :ProdutoSabor
  
    def initialize
      @valor = 0
      @ProdutoSabor = []
    end
  
    def compra(produto)
      produto.estoque -= 1
      @valor += produto.valor
    end
  
    def valorTotal
      @valor
    end
  
    def adicionaEstoque(sabor)
      @ProdutoSabor.push sabor
    end
  end
  
  