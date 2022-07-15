require './view/mensagemView.rb'

def index_comandos_models(comando)
    print(`:#{comando}> `)
    comando_model = puts   
    if comando_model == "/departamento"
        departamento_routes(`#{comando}#{comando_model}`)
    elsif comando_model == "/dependente"
        dependente_routes(`#{comando}#{comando_model}`)
    elsif comando_model == "/funcionario"
        funcionario_routes(`#{comando}#{comando_model}`)
    elsif comando_model == "/projeto"
        projeto_routes(`#{comando}#{comando_model}`)
    else
        return false
    end

    return true
end

def index_comandos()
    mensagem_comandos()
    print(':> ')
    comando = gets.to_i

    if comando == 0
        return false
    end

    if !((comando > 0) && (comando <= 4))
        return true
    end

    if(!index_comandos_models(comando))
        mensagem_erro("Comando inválido!")
        return true
    end
end