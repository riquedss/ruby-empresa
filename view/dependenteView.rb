require './controller/dependentesController'
require './view/mensagemView.rb'

def view_create_dependente()
  print('Name: ')
  name = gets
  print('Age: ')
  age = gets.chomp.to_i
  print('Kinship: ')
  kinship = gets.chomp
  
  return {
    :name => name,  
    :age => age, 
    :kinship => kinship
  } 
end

def dependente_routes()
  mensagem_comandos()
  print(">")
  comando = gets.chomp.to_i

  if comando == 1
    dependente = view_create_dependente()
    DependentesController.create(dependente)
  elsif comando == 2
    dependente = DependentesController.index()
    mensagem_lista_dependentes(dependente)
  elsif comando == 3
    print "id: "
    dependente = DependentesController.show(gets.chomp.to_i)
    mensagem_lista_dependentes([dependente])
  elsif comando == 4
    puts "update"
  elsif comando == 5
    print "id: "
    DependentesController.destroy(gets.chomp.to_i)  
  else
    mensagem_erro("Comando inválido")
  end
end