require './controller/departamentosController'

def view_create_departamento()
  print('Name: ')
  name = gets

  return {
    :name => name
  } 
end