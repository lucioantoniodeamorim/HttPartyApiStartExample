#Nome do módulo que será utilizado no arquivo de teste
module Pokemon
    #Inclusão do Httparty no módulo 
    include HTTParty
    #Definição da UrlBase usada nos testes
    base_uri 'http://pokeapi.azurewebsites.net/'
    #Formato do retorno recebido nos testes
    format :json
 end
