require '../database/bd.rb'
require '../model/departamento.rb'
require '../model/departamento.rb'
require '../model/funcionario.rb'
require '../model/projetos.rb'

class DepartamentosController < Bd
  def index()
    @departamentos = @@departamentos
  end
  
  def show(id)
    @departamento = buscar(@@departamentos, id) 
  end
  
  def create(departamento_hash)
    @departamento = departamento.new(departamento_hash)
    adicionar(@@departamento, @departamento)   
  end
  
  def update(id, departamento_hash)
    @departamento = buscar(@@departamentos, id)
    if @departamento.update(departamento)
      return true
    else
      return false
    end
  end
  
  def destroy(id)
    if remover(@@departamentos, id)
        return true
    else
        return false
    end
  end
end