require './view/mensagemView.rb'

def index_comandos_models()
  print(">")
  comando_model = gets.chom.to_i  
  if comando_model == 1
    departamento_routes(comando_model)
  elsif comando_model == 2
    dependente_routes(comando_model)
  elsif comando_model == 3
    funcionario_routes(comando_model)
  elsif comando_model == 4
    projeto_routes(comando_model)
  elsif comando_model == 5
      return false
  else
    mensagem_erro("Comando inválido")
  end  
  return true
end

