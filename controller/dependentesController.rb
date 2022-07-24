require './database/bd.rb'
require './model/dependente.rb'
require './model/dependente.rb'
require './model/funcionario.rb'
require './model/projeto.rb'

class DependentesController < Bd
  def self.index()
    @dependentes = @@dependentes
    return @dependentes
  end
  
  def self.show(id)
    @dependente = @@dependentes[buscar(@@dependentes, id)]
    return @dependente
  end
  
  def self.create(dependente_hash)
    dependente = Dependente.new(dependente_hash)
    Bd.adicionar(@@dependentes, dependente)   
  end
  
  def update()
  end
  
  def self.destroy(id)
    if remover(@@dependentes, id)
        return true
    else
        return false
    end
  end
end