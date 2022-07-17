require './database/bd.rb'
require './model/departamento.rb'
require './model/dependente.rb'
require './model/funcionario.rb'
require './model/projeto.rb'

class FuncionariosController < Bd
  def self.index()
    @funcionarios = @@funcionarios
    return @funcionarios
  end
  
  def self.show(id)
    @funcionario = @@funcionarios[Bd.buscar(@@funcionarios, id)]
    return @funcionario
  end
  
  def self.create(funcionario_hash)
    funcionario = Funcionario.new(funcionario_hash)
    Bd.adicionar(@@funcionarios, funcionario)   
  end
  
  def self.update()
  end
  
  def self.destroy(id)
    if remover(@@funcionarios, id)
        return true
    else
        return false
    end
  end
end