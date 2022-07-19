require './database/bd.rb'
require './model/dependente.rb'
require './model/dependente.rb'
require './model/funcionario.rb'
require './model/projeto.rb'

class DependentesController < Bd
  def index()
    @dependentes = @@dependentes
    return @dependentes
  end
  
  def show(id)
    @dependente = @@dependentes[buscar(@@dependentes, id)]
    return @dependente
  end
  
  def create(dependente_hash)
    dependente = dependente.new(dependente_hash)
    Bd.adicionar(@@dependentes, dependente)   
  end
  
  def update()
  end
  
  def destroy()
    if remover(@@dependentes, id)
        return true
    else
        return false
    end
  end
end