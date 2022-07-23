require './view/indexView.rb'
require './view/mensagemView.rb'

mensagem_abertura()
menu = true
while menu do 
    if(!index_comandos_models())
        print "saiu\n"
        menu = false
    end 
end