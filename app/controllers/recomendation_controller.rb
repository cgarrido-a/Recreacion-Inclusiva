class RecomendationController < ApplicationController
  def index
    require 'sendgrid-ruby'
   
    from = SendGrid::Email.new(email: 'proyectori427@gmail.com')
    to = SendGrid::Email.new(email:'proyectorecreacioninclusiva@gmail.com')
    subject = 'Muchas gracias por tu comentario!!'
    content = SendGrid::Content.new(type: 'text/plain', value: 'Tus comentarios son importantes para nosotros. Gracias por aportar a la construccion diaria de esta comunidad')
    mail = SendGrid::Mail.new(from, subject, to, content)

    sg = SendGrid::API.new(api_key: Rails.application.credentials.dig(:sendgrid, :sendgrid_api_key))
    response = sg.client.mail._('send').post(request_body: mail.to_json)

    if response.status_code == 202
      puts "gracias"
    else
      puts "error"
    end
  end

end
