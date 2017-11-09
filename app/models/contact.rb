class Contact < MailForm::Base
  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "New Contact From My Website",
      :to => "finegoz@gmail.com",
      :from => %("#{name}" <#{email}>)
    }
  end
end