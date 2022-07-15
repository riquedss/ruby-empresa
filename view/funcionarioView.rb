require '../controller/funcionariosController'

def view_create_funcionario()
  print('Name: ')
  name = gets
  print('Last Name: ')
  last_name = gets
  print('Age: ')
  age = gets.to_i
  print('Salary: ')
  salary = gets.to_f
  print('Address: ')
  address = gets
  print('Sector: ')
  sector = gets
  print('Enrollment: ')
  enrollment = gets  

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

def funcionario_routes(comando)
  if comando == "/create/funcionario"
      funcionario = view_create_funcionario()
      create(funcionario)
  elsif comando == "/index/funcionario"
      funcionario = index()
      mensagem_lista_tabela(funcionario)
  elsif comando == "/show/funcionario"

  elsif comando == "/update/funcionario"
  elsif comando == "/delete/funcionario"
  else
    return false
  end
end