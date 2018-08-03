Dado(/^que eu realizo cadastro do veiculo$/) do
  
  page(Home).clicar_cadastro
  
  #COM FAKER
  #@modelo = Faker::Vehicle.manufacture
  #@ano = Faker::Date.forward(23)
  #@placa = 'JBM-1988'
  #@km = Faker::Number.decimal(2, 3)
  #@valor = Faker::Number.decimal(2)
  
  #SEM FAKER
  #page(Home).preencher_cadastro
 
  #LISTA YAML
  posicao = rand(0..5)
  @modelo = $lista_carros[posicao]['modelo']
  @ano = $lista_carros[posicao]['ano']
  @placa = $lista_carros[posicao]['placa']
  @km = $lista_carros[posicao]['km']
  @valor = $lista_carros[posicao]['valor']
  
  page(Carro).preencher_cadastro(@modelo, @ano, @placa, @km, @valor)
end

Então(/^valido cadastro com Sucesso$/) do
  page(Carro).consultar_carro
  page(Carro).consultar_carro_cadastrado(@placa)
  puts "Veiculo encontrado com Sucesso Placa: #{@placa}"

end

Dado(/^que eu esteja na aba consulta$/) do
  page(Deletar).acessar_consulta
end

Então(/^faço a exclução da lista de veiculos$/) do
 page(Deletar).excluir_carro(10)
end