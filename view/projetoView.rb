require './controller/projetosController'
require './view/mensagemView.rb'

def view_create_projeto()
  print('Name: ')
  name = gets.chomp
  print('Client: ')
  client = gets.chomp
  print('Budget: ')
  budget = gets.chomp.to_i  

  return {
    :name => name, 
    :last_name => client, 
    :age => budget
  } 
end

def projeto_routes()
  mensagem_comandos()
  print(">")
  comando = gets.chomp.to_i

  if comando == 1
    projeto = view_create_projeto()
    ProjetosController.create(projeto)
  elsif comando == 2
    projeto = ProjetosController.index()
    mensagem_lista_projetos(projeto)
  elsif comando == 3
    print "id: "
    projeto = ProjetosController.show(gets.chomp.to_i)
    mensagem_lista_projetos([projeto])
  elsif comando == 4
    puts "Update"
  elsif comando == 5
    print "id: "
    ProjetosController.destroy(gets.chomp.to_i)  
  else
    mensagem_erro("Comando inválido")
  end
end