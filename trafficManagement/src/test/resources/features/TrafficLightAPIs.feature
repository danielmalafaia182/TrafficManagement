# language: pt

Funcionalidade: Cadastro de semáforo
  Para gerenciar semáforos no sistema
  Como usuário autenticado
  Quero que o registro de um novo semáforo seja salvo corretamente no sistema
  Cenário: Cadastro bem-sucedido de um novo semáforo
    Dado que estou autenticado com um usuário "Admin"
    E possuo os seguintes dados do semáforo:
      | campo      | valor |
      | latitude   | 1.0   |
      | longitude  | 2.0   |
    Quando eu envio uma requisição POST para o endpoint "/api/trafficLights"
    Então o status code da resposta deve ser 201

  Cenário: Cadastro mal-sucedido de um novo semáforo ao passar o campo latitude inválido
    Dado que estou autenticado com um usuário "Admin"
    E possuo os seguintes dados do semáforo:
      | campo      | valor |
      | latitude   | Abacaxi   |
      | longitude  | 2.0   |
    Quando eu envio uma requisição POST para o endpoint "/api/trafficLights"
    Então o status code da resposta deve ser 400
    E o corpo de resposta da API deve retornar a mensagem "Dados da request estão em formato inválido."

  Cenario: Validar contrato do cadastro bem-sucedido de semáforo
    Dado que estou autenticado com um usuário "Admin"
    E possuo os seguintes dados do semáforo:
      | campo      | valor |
      | latitude   | 1.0   |
      | longitude  | 2.0   |
    Quando eu envio uma requisição POST para o endpoint "/api/trafficLights"
    Então o status code da resposta deve ser 201
    E que o arquivo de contrato esperado é o "Cadastro bem-sucedido de um novo semáforo"
    Então a resposta da requisição deve estar em conformidade com o contrato selecionado