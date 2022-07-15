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
  print "|(0) - sair -> Sair do programa                                            |\n"
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
  print "|__________________________________________________________________________|\n"
end

def mensagem_lista_funcionarios(tabela)
    print " __________________________________________________________________________\n"
    print `|                         lista de Funcionários                            |\n
           |{                                                                         |\n`

    tabela.each do |coluna|
    print `|  {                                                                       |\n
           |   id: #{coluna.id},                                                      |\n
           |   nome: #{coluna.name},                                                  |\n
           |   Age: #{coluna.age},                                                    |\n
           |   Salary: #{coluna.salary},                                              |\n
           |   Address: #{coluna.address},                                            |\n
           |   Sector: #{coluna.sector},                                              |\n
           |   Enrollment: #{coluna.enrollment}                                       |\n
           |  }                                                                       |\n`
    end
    print `|}                                                                         |\n
           |__________________________________________________________________________|\n`
end

def mensagem_erro(mensagem)
    print " __________________________________________________________________________\n"
    print `|Erro: #{mensagem};                                                         |\n`
    print "|__________________________________________________________________________|\n"
end

