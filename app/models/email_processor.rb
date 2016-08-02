class EmailProcessor
  def initialize(email)
    @email = email
  end

  def process
    photo = Photo.create!({ caption: @email.subject, from_email: @email.from[:email], image: @email.attachments.first})
    Rails.logger.info @email.attachments.inspect
    Pusher.trigger('email_image', 'image_upload', PhotoSerializer.new(photo).as_json)
    PhotoThankerMailer.send_thank_you_email(photo).deliver
  end

end
