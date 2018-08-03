class Deletar < Calabash::ABase


	def acessar_consulta
		page(Geral).validar_elemento('action_bar')
   	    touch("* id:'consulta'")
	end

	def excluir_carro(quantify)
		quantify.times do
			page(Geral).contem_texto("Cadastro de Carros Web")
					
			touch("* id:'modelo'")
			
			page(Geral).validar_elemento('deletar')
					
			touch("* id:'deletar'")

		end
    end

end	