#language: pt
#utf-8

Funcionalidade: Cadastrar Veiculo
  Eu como novo usuario do App da Carros
  quero realizar um cadastro

  @cadastrar
  Cenario: Cadastro de Veiculo
  Dado que eu realizo cadastro do veiculo
  Então valido cadastro com Sucesso

  @excluir
  Cenario: Excluir lista de Carro
  Dado que eu esteja na aba consulta
  Então faço a exclução da lista de veiculos
