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
  print "|(2) - index -> Mostrar dados do Banco de dados                            |\n"
  print "|(3) - show -> Mostrar um dado do Banco de dados                           |\n"
  print "|(4) - update -> Para atualizar algum modelo                               |\n"
  print "|(5) - delete -> Para deletetar algum modelo                               |\n"
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
    print "|name: #{coluna.name},                                                     |\n"
    print "|Age: #{coluna.age},                                                       |\n"
    print "|Salary: #{coluna.salary},                                                 |\n"
    print "|Address: #{coluna.address},                                               |\n"
    print "|Sector: #{coluna.sector},                                                 |\n"
    print "|Enrollment: #{coluna.enrollment}                                          |\n"
    end
    print "|__________________________________________________________________________|\n"
end

def mensagem_lista_departamentos(tabela)
    print " __________________________________________________________________________\n"
    print "|                         lista de Departamentos                           |\n"
    tabela.each do |coluna|
    print "|id: #{coluna.id},                                                         |\n"
    print "|name: #{coluna.name},                                                     |\n"
    print "|manager: #{coluna.manager}                                                |\n"
    end
    print "|__________________________________________________________________________|\n"
end

def mensagem_lista_dependentes(tabela)
    print " __________________________________________________________________________\n"
    print "|                         lista de Dependentes                             |\n"
    tabela.each do |coluna|
    print "|id: #{coluna.id},                                                         |\n"
    print "|name: #{coluna.name},                                                     |\n"
    print "|age: #{coluna.age},                                                       |\n"
    print "|kinship: #{coluna.kinship}                                                |\n"
    end
    print "|__________________________________________________________________________|\n"
end

def mensagem_lista_projetos(tabela)
  print " ____________________________________________________________________________\n"
  print "|                         lista de projetos                                  |\n"
  tabela.each do |coluna|
  print "|id: #{coluna.id},                                                           |\n"
  print "|name: #{coluna.name},                                                       |\n"
  print "|client: #{coluna.client},                                                   |\n"
  print "|budget: #{coluna.budget}                                                    |\n"
  end
  print "|__________________________________________________________________________|\n"
end

def mensagem_erro(mensagem)
    print " __________________________________________________________________________\n"
    print `|Erro: #{mensagem};                                                        |\n`
    print "|__________________________________________________________________________|\n"
end