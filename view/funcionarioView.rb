require './controller/funcionariosController'

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

def delete_view_funcionario() 
  print "id: "
    if FuncionariosController.show(gets.chomp)
      mensagem("Apagado")
    else
      mensagem("Funcionario encontrado")
    end
end

def funcionario_routes(comando)
  if comando == "/create/funcionario"
      funcionario = view_create_funcionario()
      FuncionariosController.create(funcionario)
  elsif comando == "/index/funcionario"
      funcionario = FuncionariosController.index()
      mensagem_lista_funcionarios(funcionario)
  elsif comando == "/show/funcionario"
    print "id: "
    funcionario = FuncionariosController.show(gets.chomp.to_i)
    puts "teste show"
    puts funcionario.class
    mensagem_lista_funcionarios([funcionario])
  elsif comando == "/update/funcionario"
  elsif comando == "/delete/funcionario"
    delete_view_funcionario()  
  else
    return false
  end
end