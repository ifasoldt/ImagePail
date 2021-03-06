class PhotoThankerMailer < ApplicationMailer
default :from => 'any_from_address@example.com'

  # send a signup email to the user, pass in the user object that   contains the user's email address
  def send_thank_you_email(photo)
    @photo = photo
    mail(:to => @photo.from_email,
    :subject => 'Thanks for submitting the photo!' )
  end
end
