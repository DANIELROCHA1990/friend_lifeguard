class Api::V1::MessagesController < ApplicationController

  def create
    require 'twilio-ruby'
    @recipient_number = params[:contact]
    client = Twilio::REST::Client.new(account_sid, auth_token)

    begin
      message = client.messages.create(
        body: 'You goddamn right! Esta mensagem foi enviada via API Rails por Daniel Rocha',
        from: "whatsapp:#{phone_number}",
        to: "whatsapp:[YOUR_NUMBER_REGISTERED_IN_TWILIO]"
      )
      render json: { message: "Mensagem enviada com sucesso!" }, status: 201
    rescue Twilio::REST::RestError => e
      render json: { error: e.message }
    end
  end

  private

  def account_sid
    Rails.application.config.twilio_account_sid
  end

  def auth_token
    Rails.application.config.twilio_auth_token
  end

  def phone_number
    Rails.application.config.twilio_phone_number
  end

  def message_params
    params.require(:message).permit(:contact)
  end
end
