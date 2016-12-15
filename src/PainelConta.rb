class PainelConta
  attr_accessor :cliente, :conta

  include GladeGUI


  def initialize(c)
    @cliente = c
    @conta = c.conta
    @window1 = "Minha conta - #{@cliente.nome}"
    @labelSaldo = @conta.saldo
  end

  def registrar_operacao(labelOperacoes, operacao)
    data = Time.now.strftime("%d/%m/%Y %H:%M")
    labelOperacoes.text += "\n#{data} - #{operacao}"
  end

  def atualizar_saldo(labelSaldo)
    labelSaldo.text = @conta.saldo.to_s
  end

  def btnDepositar__clicked(*argv)
    valor = @builder["valorDeposito"].text.to_f
    @conta.depositar(valor)
    atualizar_saldo(@builder["labelSaldo"])
    registrar_operacao @builder["labelOperacoes"], "Depositou #{valor}"
  end

  def btnSacar__clicked(*argv)
    valor = @builder["valorSaque"].text.to_f
    @conta.sacar(valor)
    atualizar_saldo(@builder["labelSaldo"])
    registrar_operacao @builder["labelOperacoes"], "Sacou #{valor}"
  end

  def btnSairDaConta__clicked(*argv)
    @builder["window1"].destroy
  end

end
