class UserMailer < ApplicationMailer
  default from: "carlosibamich@hotmail.com"

  def contact_form(email, name, message)
    @message = message
    mail(from: email,
         to: 'carlosibarra.art@gmail.com',
         subject: "A new contact form message from #{name}")
  end
end
