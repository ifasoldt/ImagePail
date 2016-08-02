class PhotoSerializer < ActiveModel::Serializer
  attributes :id, :caption
  has_one :image
  has_one :other_sizes

  def image
    Refile.attachment_url(object, :image)
  end

  def other_sizes
    image_array = []
    image_array << Refile.attachment_url(object, :image, :fill, 100, 100)
    image_array << Refile.attachment_url(object, :image, :fill, 250, 250)
    image_array << Refile.attachment_url(object, :image, :fill, 500, 500)
    image_array << Refile.attachment_url(object, :image, :fill, 1000, 1000)
    image_array << Refile.attachment_url(object, :image, :limit, 50, 50)
    image_array
  end
end
