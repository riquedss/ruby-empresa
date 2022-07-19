require './database/bd.rb'

class Projeto < Bd
  attr_accessor(:id, :name, :client, :kinship, :departament_id)
     
  STATUS = true
  
  def initialize(params)
    @id = tabela_id(@@Projetos)
    @name = params[:name]
    @client = params[:client]
    @budget = params[:budget]
    @departament_id = params[:departament_id]
  end
  
  def adiciona_departamento(departamento)
    if(self.budget > departamento.gastos)
        self.departament_id = departamento.id
        return true
    end
    return false
  end 
  
  def update(params)
    @client = params[:client]
    @budget = params[:budget]
  end
end