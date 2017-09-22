class WhaleMailer < ApplicationMailer
  def new_email

    mail(
      to: "whales4peace@gmail.com",
      subject: "ITS FREE!"
    )
  end
end
