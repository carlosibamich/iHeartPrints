# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview
  def contact_form
    UserMailer.contact_form("some_example@email.com", "Some Dude", "Trying to think of something more intersesting to say than 'Hello World!'' Got nothing.")
  end
end
