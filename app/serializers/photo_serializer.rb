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
  end
end
