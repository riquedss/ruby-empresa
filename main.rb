require './view/indexView.rb'
require './view/mensagemView.rb'

mensagem_abertura()
menu = true
while menu do 
    if(!index_comandos())
        print "saiu\n"
        menu = false
    end 
end