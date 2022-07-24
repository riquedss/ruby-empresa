require './database/bd.rb'

class Departamento < Bd
  attr_accessor(:id, :name, :manager)

  STATUS = true   

  def initialize(params)
    @id = Bd.tabela_id(@@funcionarios)
    @name = params[:name]
    @manager = params[:maneger]
  end
  
  def update(params)
    @name = params[:name]  
  end

  def numero_funcionarios()
    numero = 0
    @@funcionarios.each do |funcionario|
      if funcionario.departamento_id == self.id
        numero += 1
      end
    end    
    return numero
  end    

  def gastos()
    salary = 0
    @@funcionarios.each do |funcionario|
      if funcionario.departamento_id == self.id
        salary += funcionario.salary 
      end
    end  
    return numero_dependentes
  end

  def adiciona_gerente(funcionario)
      if !funcionario.departamento_id == self.id
        return false
      end  
      self.manager = funcionario.id
      return true
  end
end