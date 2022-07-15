require '../database/bd.rb'
require '../model/departamento.rb'
require '../model/projeto.rb'
require '../model/funcionario.rb'
require '../model/projetos.rb'

class ProjetosController < Bd
  def index()
    @projetos = @@projetos
  end
  
  def show(id)
    @projeto = buscar(@@projetos, id) 
  end
  
  def create(projeto_hash)
    @projeto = projeto.new(projeto_hash)
    #validação na criação do projeto
    adicionar(@@projeto, @projeto)   
  end
  
  def update()
  end
  
  def destroy()
    if remover(@@projetos, id)
        return true
    else
        return false
    end
  end
end