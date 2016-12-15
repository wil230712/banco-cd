class BancoConhecimentoDigital 
  attr_accessor :cliente
 
  include GladeGUI

  def initialize(cliente)
    # define o cliente que irá utilizar a aplicação
    @cliente = cliente

    # define o endereço da imagem que vai constar no topo
    @image1 = "src/conhecimento-digital.png"

    # define o texto que ficará no botão
    @button1 = "Acessar"  
  end  

  # ação a ser executada após o clique no botão
  def button1__clicked(*a)
    conta = @builder["entry1"].text # valor digitado no input 1
    senha = @builder["entry2"].text # valor digitado no input 2

    # Regrinha: se os dados conferirem, abre o painel.
    # Se não conferirem, manda tentar novamente!    
    if conta == @cliente.conta.numero && senha == @cliente.conta.senha
      # Dados conferem: Abra o painel.
      alert "Olá #{@cliente.nome}, bem-vindo ao internet banking!", :title => "Sucesso"
      # abrir o painel da minha conta
      PainelConta.new(@cliente).show_glade(self)
    else
      # Dados não conferem: tente novamente...
      alert "Dados não conferem. Tente novamente!", :title => "Falha na autenticação!"
    end
  end


end

