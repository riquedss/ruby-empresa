class Bd
  @@funcionarios = []
  @@departamentos = []
  @@dependentes = []
  @@projetos = []

  def self.funcionario_id
    return @@funcionarios.length + 1
  end

  def self.departamento_id
    return @@departamentos.length + 1
  end

  def self.dependente_id
    return @@dependentes.length + 1
  end

  def self.projeto_id
    return @@projetos.length + 1
  end

  def self.adicionar(tabela, valores)
    if tabela == "funcionarios"
        @@funcionarios.push(valores)

    elsif tabela == "departamentos"
        @@departamentos.push(valores)

    elsif tabela == "dependentes"
        @@dependentes.push(valores)   

    elsif tabela == "projetos"
        @@projetos.push(valores)
    end
  end

end

puts Bd.funcionario_id
puts Bd.departamento_id
puts Bd.projeto_id
puts Bd.dependente_id

Bd.adicionar("funcionarios", "Teste")
Bd.adicionar("projetos", "Teste")
Bd.adicionar("departamentos", "Teste")
Bd.adicionar("dependentes", "Teste")

puts Bd.funcionario_id
puts Bd.departamento_id
puts Bd.projeto_id
puts Bd.dependente_id
