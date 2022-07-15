require '../database/bd.rb'
require '../model/dependente.rb'
require '../model/dependente.rb'
require '../model/funcionario.rb'
require '../model/projetos.rb'

class DependentesController < Bd
  def index()
    @dependentes = @@dependentes
  end
  
  def show(id)
    @dependente = buscar(@@dependentes, id) 
  end
  
  def create(dependente_hash)
    @dependente = dependente.new(dependente_hash)
    adicionar(@@dependente, @dependente)   
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