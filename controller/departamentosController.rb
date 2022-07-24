require './database/bd.rb'
require './model/departamento.rb'
require './model/departamento.rb'
require './model/funcionario.rb'
require './model/projeto.rb'

class DepartamentosController < Bd
  def self.index()
    @departamentos = @@departamentos
    return @departamentos
  end
  
  def self.show(id)
    @departamento = @@departamentos[buscar(@@departamentos, id)]
    return @departamento
  end
  
  def self.create(departamento_hash)
    departamento = Departamento.new(departamento_hash)
    Bd.adicionar(@@departamentos, departamento)   
  end
  
  def update(id, departamento_hash)
  end
  
  def self.destroy(id)
    if remover(@@departamentos, id)
        return true
    else
        return false
    end
  end
end