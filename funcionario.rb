class Funcionario
    attr_accessor(:name, :last_name, :age, :salary, :address, :sector, :enrollment)

    def initialize(params)
        # @id = id ++
        @name = params[:name]
        @last_name = params[:last_name]
        @age = params[:age]
        @salary = params[:salary]
        @address = params[:sector]
        @enrollment = params[:enrollment]
    end
end