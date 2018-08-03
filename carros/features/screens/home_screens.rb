class Home < Calabash::ABase

	    #ACESSA ABA DO MENU
	def clicar_cadastro
		page(Geral).validar_elemento('action_bar')
		touch("* id:'cadastrar'")		
	end

	def preencher_cadastro
		  #MODELO
		  touch("* id:'modelo'")
  		keyboard_enter_text('Kadett')

  		#ANO
    	touch("* id:'ano'")
  		keyboard_enter_text('1996')
        
      #PLACA
    	touch("* id:'placa'")
  		keyboard_enter_text("JBM-1988")
    	
    	#KM
    	hide_soft_keyboard
  		touch("* id:'km'")
  		keyboard_enter_text('2.1988')
    	
    	#VALOR
    	hide_soft_keyboard
  		touch("* id:'valor'")
  		keyboard_enter_text('5.500')
    
    	#CADASTRAR
		  hide_soft_keyboard
		  page(Geral).validar_elemento('cadastrar')
		  touch("* id:'cadastrar'")
  	end
end