require '../database/bd.rb'

class Funcionario < Bd
  attr_accessor(:id, :name, :last_name, :age, :salary, :address, :sector, :enrollment)

  STATUS = true #Variável que verifica se a instância é válida

  def initialize(params)
    @id = tabela_id(@@funcionarios)
    @name = params[:name]
    @last_name = params[:last_name]
    @age = params[:age]
    @salary = params[:salary]
    @address = params[:sector]
    @enrollment = params[:enrollment]
    @id_departamento = params[:id_departamento]
  end  

  def status()
    return STATUS
  end

  def nome_completo()
    return `#{@name} #{@last_name}`
  end  

  def numero_dependentes()
    numero_dependentes = 0
    @@dependentes.each do |dependente|
      if dependente.funcionario_id == self.id
          numero_dependentes += 1
      end
    end  
    return numero_dependentes
  end
end