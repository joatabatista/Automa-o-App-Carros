require 'calabash-android/cucumber'
require 'calabash-android/abase'
require 'faker'
require 'cpf_faker'
require 'pry'

# configuração YAML
$lista_carros = YAML.load_file('./date/lista.yml')