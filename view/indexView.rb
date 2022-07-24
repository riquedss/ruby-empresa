require './view/mensagemView.rb'
require './view/departamentoView.rb'
require './view/dependenteView.rb'
require './view/funcionarioView.rb'
require './view/projetoView.rb'

def index_comandos_models()
  mensagem_comandos_model()
  print(">")
  comando_model = gets.chomp.to_i  
  if comando_model == 1
    departamento_routes()
  elsif comando_model == 2
    dependente_routes()
  elsif comando_model == 3
    funcionario_routes()
  elsif comando_model == 4
    projeto_routes()
  elsif comando_model == 5
      return false
  else
    mensagem_erro("Comando inválido")
  end  
  return true
end