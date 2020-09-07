Dado("que possuo itens no meu carrinho") do
   visit 'http://enjoeat.herokuapp.com/restaurants/burger-house/menu'
 
 #Adiciona um item especifico
 # item = find('.menu-item-info-box', text:'Classic Burger'.upcase)
 # puts item.text
 # item.find('a').click

 #Listando todos os produtos
     produtos=all('.menu-item-info-box')
     produtos.each do |p|
       puts p.text
    end

 #Para pegar o primeiro
 #   produtos[0].find('a').click
 #Selecionando produto aleatoriamente
     produtos.sample.find('a').click    
end
 
Dado("eu já fechei o meu pedido") do
   find('a[href="/order"]').click
end
  
Quando("eu finalizo o pedido com {string}") do |forma_pagamento|
   find('input[formcontrolname=name]').set 'Raphael'
   find('input[formcontrolname=email').set 'joao@uol.com.br'
   find('input[formcontrolname=emailConfirmation').set 'joao@uol.com.br'
   find('input[formcontrolname=address').set 'Avenida Paulista'
   find('input[formcontrolname=number').set '900'
   find('input[formcontrolname=optionalAddress').set '17o andar'

   linha=find('mt-radio[formcontrolname=paymentOption] div', text: forma_pagamento)
   linha.find('label div').click

   click_button 'Concluir Pedido'
end
  
Então("meu pedido é concluído com a mensagem:") do |mensagem_final|
   expect(page).to have_content mensagem_final
end
