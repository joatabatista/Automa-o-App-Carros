class Carro < Calabash::ABase

      #ACESSA ABA DO MENU
    def clicar_cadastro
      page(Geral).validar_elemento('action_bar')
      touch("* id:'cadastrar'")
    end
      #PREENCHER CADASTRO
    def preencher_cadastro(modelo, ano, placa, km, valor)
      self.preencher_modelo(modelo)
      self.preencher_ano(ano)
      self.preencher_placa(placa)
      self.preencher_qui(km)
      self.preencher_valo(valor)
      self.salvar
    end

      #MODELO
    def preencher_modelo(modelo)
      touch("* id:'modelo'")
      keyboard_enter_text(modelo)
    end
  
      #ANO
    def preencher_ano(ano)
        touch("* id:'ano'")
        keyboard_enter_text(ano)
    end
     
      #PLACA
    def preencher_placa(placa)
    touch("* id:'placa'")
    keyboard_enter_text(placa)

    #touch("* id:'placa'")
    #keyboard_enter_text(placa)
    end
   
      #KM
    def preencher_qui(km)
     hide_soft_keyboard
     touch("* id:'km'")
     keyboard_enter_text(km)
    end

      #VALOR
    def preencher_valo(valor)
      hide_soft_keyboard
      touch("* id:'valor'")
      keyboard_enter_text(valor)
      hide_soft_keyboard
    end  

      #SALVA CADASTRO
    def salvar
      touch("* id:'cadastrar'")
      page(Geral).contem_texto("Carro cadastrado com sucesso")
      press_back_button
    end

      #CONSULTAR VEICULO CADASTRADO
    def consultar_carro
      page(Geral).validar_elemento('action_bar')
      touch("* id:'consulta'")      
    end
    
    def consultar_carro_cadastrado(placa)
      page(Geral).descer_tudo(3)
      page(Geral).validar_texto(placa)
    end
end 