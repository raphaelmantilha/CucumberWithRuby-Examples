#language: pt

Funcionalidade: Finalizar pedido 
   Para que meu pedido seja encaminhado para a fila de preparação
   Sendo um cliente que já adicionou um ou mais produtos no carrinho
   Posso finalizar o meu pedido com Cartão de Débito, Dinheiro ou Refeição

   @aqui
   Esquema do Cenário: Pagamento

      Dado que possuo itens no meu carrinho
      E eu já fechei o meu pedido
      Quando eu finalizo o pedido com "<pag>"
      Então meu pedido é concluído com a mensagem:
      """
      Seu pedido foi recebido pelo restaurante. Prepare a mesa que a comida está chegando!
      """

      Exemplos:
      |pag|
      |Dinheiro|
      |Cartão de Débito|
      |Cartão Refeição|