class Cliente
  attr_accessor :nome, :cpf, :conta

  def initialize(conta)
    # Associa uma conta ao cliente
    @conta = conta

    # Ao criar um cliente, definimos seu histórico como um Array vazio.
    @historico = Array.new
  end
end
