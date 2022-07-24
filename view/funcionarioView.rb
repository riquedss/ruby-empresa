require './controller/funcionariosController'
require './view/mensagemView.rb'

def view_create_funcionario()
  print('Name: ')
  name = gets.chomp
  print('Last Name: ')
  last_name = gets.chomp
  print('Age: ')
  age = gets.chomp.to_i
  print('Salary: ')
  salary = gets.chomp.to_f
  print('Address: ')
  address = gets
  print('Sector: ')
  sector = gets.chomp
  print('Enrollment: ')
  enrollment = gets.chomp 

  return {
    :name => name, 
    :last_name => last_name, 
    :age => age, 
    :salary => salary, 
    :address => address, 
    :sector => sector, 
    :enrollment => enrollment
  } 
end

def funcionario_routes()
  mensagem_comandos()
  print(">")
  comando = gets.chomp.to_i

  if comando == 1
    funcionario = view_create_funcionario()
    FuncionariosController.create(funcionario)
  elsif comando == 2
    funcionario = FuncionariosController.index()
    mensagem_lista_funcionarios(funcionario)
  elsif comando == 3
    print "id: "
    funcionario = FuncionariosController.show(gets.chomp.to_i)
    mensagem_lista_funcionarios([funcionario])
  elsif comando == 4
    puts "Update"
  elsif comando == 5
    print "id: "
    FuncionariosController.destroy(gets.chomp.to_i)  
  else
    mensagem_erro("Comando inválido")
  end
end