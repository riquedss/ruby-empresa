def mensagem_abertura()
  print " __________________________________________________________________________\n"
  print "|                                                                          |\n"
  print "|                                                                          |\n"
  print "|            ______________________________________________                |\n"
  print "|           |                                              |               |\n"
  print "|           |    Seja Bem-vindo ao sistema de empresa      |               |\n"
  print "|           |      Desenvolvido por Henrique Santana       |               |\n"
  print "|           |                 Version: 1.0                 |               |\n"
  print "|           |                                              |               |\n"
  print "|           |______________________________________________|               |\n"
  print "|                                                                          |\n"
  print "|__________________________________________________________________________|\n"
end

def mensagem_comandos()
  print " __________________________________________________________________________\n"
  print "|                              COMANDOS                                    |\n"
  print "|                                                                          |\n"
  print "|(1) - create -> Para criar algum modelo                                   |\n"
  print "|(2) - read -> Mostrar dados do Banco de dados                             |\n"
  print "|(3) - update -> Para atualizar algum modelo                               |\n"
  print "|(4) - delete -> Para deletetar algum modelo                               |\n"
  print "|__________________________________________________________________________|\n"
end

def mensagem_comandos_model()
  print " __________________________________________________________________________\n"
  print "|                              COMANDOS                                    |\n"
  print "|                                                                          |\n"
  print "|(1) - departamento                                                        |\n"
  print "|(2) - dependente                                                          |\n"
  print "|(3) - funcionarios                                                        |\n"
  print "|(4) - projetos                                                            |\n"
  print "|(0) - sair                                                                |\n"
  print "|__________________________________________________________________________|\n"
end

def mensagem_lista_funcionarios(tabela)
    print " __________________________________________________________________________\n"
    print "|                         lista de Funcionários                            |\n"
    tabela.each do |coluna|
    print "|id: #{coluna.id},                                                         |\n"
    print "|nome: #{coluna.name},                                                     |\n"
    print "|Age: #{coluna.age},                                                       |\n"
    print "|Salary: #{coluna.salary},                                                 |\n"
    print "|Address: #{coluna.address},                                               |\n"
    print "|Sector: #{coluna.sector},                                                 |\n"
    print "|Enrollment: #{coluna.enrollment}                                          |\n"
    end
    print "|__________________________________________________________________________|\n"
end

def mensagem_erro(mensagem)
    print " __________________________________________________________________________\n"
    print `|Erro: #{mensagem};                                                        |\n`
    print "|__________________________________________________________________________|\n"
end

