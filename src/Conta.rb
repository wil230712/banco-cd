class Conta
  attr_accessor :numero, :senha, :saldo 

  def depositar(valor) 
    @saldo += valor
  end 

  def sacar(valor)
    @saldo -= valor
  end

end
