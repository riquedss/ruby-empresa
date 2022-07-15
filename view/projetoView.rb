require '../controller/projetosController'

def view_create_funcionario()
  print('Name: ')
  name = gets
  print('Cliente: ')
  client = gets
  print('Orçamento: ')
  budget = gets.to_i  

  return {
    :name => name, 
    :last_name => client, 
    :age => budget
  } 
end