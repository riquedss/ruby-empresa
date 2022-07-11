require '../database/bd.rb'

class Funcionario
    attr_accessor(:id, :name, :last_name, :age, :salary, :address, :sector, :enrollment)

    def initialize(params)
        @id = Bd.funcionario_id
        @name = params[:name]
        @last_name = params[:last_name]
        @age = params[:age]
        @salary = params[:salary]
        @address = params[:sector]
        @enrollment = params[:enrollment]
    end

    def nome_completo()
        return `#{@name} #{@last_name}`
    end

    def numero_dependentes()
        numero_dependentes = 0
        @dependentes = Bd.class_variable_get(:@@dependentes)
        @dependentes.each do |dependente|
            puts dependente
            if dependente.id == self.id
                puts self
                numero_dependentes += 1
            end
        end

        return numero_dependentes
    end
end

# a = Funcionario.new({:name => "Henrique", :last_name => "Santana", :age => 20, :salary => 2000, :address => "Rua", :sector => "Financeiro", :enrollment => "131243"})

