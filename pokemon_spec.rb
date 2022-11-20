#Definição do arquivo de testes
describe 'Teste de API Pokemon' do
 
    #Definição do teste
    it 'Get All Pokemons' do
        #Salva o retorno da chamada na variável resposta para validação
        @pokemons = Pokemon.get('/api/pokemon/list')
        #Validade se o status code da chamada é o esperado
        expect(@pokemons.code).to eq(200)
        #Valida se o campo Success da chamada retornou true
        expect(@pokemons['success']).to eq(true)
    end

    #Definição do teste
    it 'Get One Pokemon' do
        #Salva o retorno da chamada na variável resposta para validação
        @pokemons = Pokemon.get('/api/pokemon/Bulbasaur')
        #Validade se o status code da chamada é o esperado
        expect(@pokemons.code).to eq(200)
        # Valida se o campo name da chamada retornou Bulbasaur
        expect(@pokemons['data']['name']).to eq('Bulbasaur')
    end
end
