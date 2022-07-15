require '../database/bd.rb'

class Dependente < Bd
  attr_accessor(:id, :name, :age, :kinship) 
  
  STATUS = true

  def initialize(params)
    @id = tabela_id(@@Departamento)
    @name = params[:name]
    @age = params[:age]
    @kinship = params[:kinship]
  end
  
  def update(params)
    @name = params[:name]
    @age = params[:age]
    @kinship = params[:kinship]
  end
end