Feature: Manage recebimentos
    In order to avoid errors
    As an a visitor 
    I want test some scenarios
    
     
    Scenario: Create new recebimentos
    	And the following tipo_de_recebimentos_id exists:
		| nome_do_tipo  | descricao_do_tipo |
		| Salário       | Teste
   		Given I am logged in user
   		When I am on the recebimentos page
   		And I follow "New Recebimento"   		
		And I select "2006" from "recebimento_data_recebimento_1i"
		And I select "March" from "recebimento_data_recebimento_2i" 
		And I select "13" from "recebimento_data_recebimento_3i"            
        And I fill in "recebimento_valor_recebimento" with "12,00"
        And I fill in "recebimento_descricao_recebimento" with "Teste de descricao"
        And I select "Salário" from "recebimento_tipo_de_recebimentos_id"
        And I select "Dinheiro" from "recebimento_forma_de_recebimento_id"
		And I select "Família" from "recebimento_categoria_do_recebimento_id"
	    And I press "Create Recebimento"
		Then I should see "Recebimento was successfully created."
        

