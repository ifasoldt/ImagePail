class PhotoSerializer < ActiveModel::Serializer
  attributes :id, :caption
  has_one :image

  def image
    Refile.attachment_url(object, :image)
  end
end
