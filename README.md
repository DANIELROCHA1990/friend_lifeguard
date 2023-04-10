# README

Este aplicativo é voltado para estudo de API que envia mensagens de texto via WhatsApp

## Algumas considerações

* Ruby version = 3.0.2
* Rails version = 7.0.4
* Database = PostgreSQL
* Gems = pg, dotenv-rails
* Antes de tudo deve-se fazer o cadastro na plataforma da Twilio e suas devidas configurações
  OBS: Embora o Twilio seja uma plataforma paga, eles oferecem uma opção gratuita que permite enviar mensagens de WhatsApp limitadas para o número de telefone que você verificou com eles.
* bunde install
* rails db:create
* rails db:migrate

## .env ##
* Criar arquivo .env e logo após inseri-lo no .gitignore

* criar e configura as seguintes contantes conforme dados informado pelo Twilio
  . TWILIO_AUTH_TOKEN=SEU_AUTH_TOKEN
  . TWILIO_ACCOUNT_SID=SEU_ACCOUNT_SID

## Application.rb ##
config.twilio_account_sid = 'SEU_ACCOUNT_SID'
config.twilio_auth_token = 'SEU_AUTH_TOKEN'
config.twilio_phone_number = 'SEU_NÚMERO_DO_WHATSAPP'

*rails s

## Postman ##
  . POST - http://localhost:3000/api/v1/messages
  . SEND
