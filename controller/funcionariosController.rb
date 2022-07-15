require '../database/bd.rb'
require '../model/departamento.rb'
require '../model/dependente.rb'
require '../model/funcionario.rb'
require '../model/projetos.rb'

class FuncionariosController < Bd
  def index()
    @funcionarios = @@funcionarios
  end
  
  def show(id)
    @funcionario = buscar(@@funcionarios, id) 
  end
  
  def create(funcionario_hash)
    @funcionario = Funcionario.new(funcionario_hash)
    adicionar(@@funcionario, @funcionario)   
  end
  
  def update()
  end
  
  def destroy()
    if remover(@@funcionarios, id)
        return true
    else
        return false
    end
  end
end