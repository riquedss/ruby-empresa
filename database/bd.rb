class Bd
  @@funcionarios = []
  @@departamentos = []
  @@dependentes = []
  @@projetos = []

  def self.tabela_id(tabela)
    return tabela.length + 1
  end

  def self.adicionar(tabela, coluna)
    tabela.push(coluna)
  end

  def self.buscar(tabela, id)
    indice = 0
    tabela.each do |coluna|
      if coluna.id == id
        return indice
      end
      indice += 1
    end
    return false
  end

  def self.remover(tabela, id)
    indice = buscar(tabela, id)
    if indice
      tabela.delete_at(indice)
      return true
    else 
      return false
    end
  end
end