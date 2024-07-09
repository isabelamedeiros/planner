# DIA 1: Planner

# Sobre o projeto

> O projeto Journey tem como objetivo ajudar o usuário a organizar viagens à trabalho ou lazer. O usuário pode criar uma viagem com nome, data de início e fim. Dentro da viagem o usuário pode planejar sua viagem adicionando atividades para realizar em cada dia.
>

## Requisitos

### Requisitos funcionais

1. O usuário cadastra uma viagem informando o local de destino, data de início, data de término, e-mails dos convidados e também seu nome completo e endereço de e-mail;
2. O criador da viagem recebe um e-mail para confirmar a nova viagem através de um link. Ao clicar no link, a viagem é confirmada, os convidados recebem e-mails de confirmação de presença e o criador é redirecionado para a página da viagem;
3. Os convidados, ao clicarem no link de confirmação de presença, são redirecionados para a aplicação onde devem inserir seu nome (além do e-mail que já estará preenchido) e então estarão confirmados na viagem;
4. Na página do evento, os participantes da viagem podem adicionar links importantes da viagem como reserva do AirBnB, locais para serem visitados, etc...
5. Ainda na página do evento, o criador e os convidados podem adicionar atividades que irão ocorrer durante a viagem com título, data e horário;
6. Novos participantes podem ser convidados dentro da página do evento através do e-mail e assim devem passar pelo fluxo de confirmação como qualquer outro convidado

# Criando o projeto

## Entidade Viagem

```jsx
    "destination": {
      "type": "string",
      "minLength": 4,
      "description": "O destino da viagem."
    },
    "starts_at": {
      "type": "string",
      "format": "date-time",
      "description": "A data e hora de início da viagem no formato RFC 3339."
    },
    "ends_at": {
      "type": "string",
      "format": "date-time",
      "description": "A data e hora de término da viagem no formato RFC 3339."
    },
    "emails_to_invite": {
      "type": "array",
      "items": {
        "type": "string",
        "format": "email"
      },
      "description": "Uma lista de emails a serem convidados para a viagem."
    },
    "owner_name": {
      "type": "string",
      "description": "O nome do proprietário da viagem."
    },
    "owner_email": {
      "type": "string",
      "format": "email",
      "description": "O email do proprietário da viagem."
    }
```

- [ &check; ]  Criar projeto usando [Spring Initializr](https://start.spring.io/)
    - Spring Web
    - Flyway
    - Dev Tools
    - Lombok
    - JPA
    - H2 Database
- [ &check; ]  Configurar banco de dados na aplicação
- [ &check; ]  Criar migration para criação da tabela `trips`
    - Arquivos de Migration representam mudanças na estrutura do nosso banco de dados
        - criar uma tabela
        - alterar tabela, removendo campo, adicionando um campo
        - instalacao de driver
        - inserção em massa, de dados default
    - Arquivos de migration ⇒ scripts SQL, rodar comandos no banco
- [  &check; ]  Criar entidades que irá representar uma `Trip`
- [ &check;  ]  Criar repository da entidade viagem
- [  &check; ]  Criar endpoint de cadastro de viagem **`POST**/trips`
- [  &check; ]  Criar endpoint de consulta de viagem **`GET**/trips/{tripId}`

