require './controller/departamentosController'
require './view/mensagemView.rb'

def view_create_departamento()
  print('Name: ')
  name = gets.chomp

  return {
    :name => name
  } 
end

def departamento_routes()
  mensagem_comandos()
  print(">")
  comando = gets.chomp.to_i

  if comando == 1
    departamento = view_create_departamento()
    DepartamentosController.create(departamento)
  elsif comando == 2
    departamento = DepartamentosController.index()
    mensagem_lista_departamentos(departamento)
  elsif comando == 3
    print "id: "
    departamento = DepartamentosController.show(gets.chomp.to_i)
    mensagem_lista_departamentos([departamento])
  elsif comando == 4
    puts "update"
  elsif comando == 5
    print "id: "
    DepartamentosController.destroy(gets.chomp.to_i)  
  else
    mensagem_erro("Comando inválido")
  end
end