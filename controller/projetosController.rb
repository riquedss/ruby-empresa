require './database/bd.rb'
require './model/departamento.rb'
require './model/projeto.rb'
require './model/funcionario.rb'
require './model/projeto.rb'

class ProjetosController < Bd
  def self.index()
    @projetos = @@projetos
    return @projetos
  end
  
  def self.show(id)
    @projeto = buscar(@@projetos, id) 
  end
  
  def self.create(projeto_hash)
    @projeto = projeto.new(projeto_hash)
    Bd.adicionar(@@projetos, @projeto)   
  end
  
  def update()
  end
  
  def self.destroy()
    if remover(@@projetos, id)
        return true
    else
        return false
    end
  end
end