class PhotoSerializer < ActiveModel::Serializer
  attributes :id, :caption
  has_one :image
  has_one :other_sizes

  def image
    Refile.attachment_url(object, :image)
  end

  def other_sizes
    image_array = []
    image_array << {one_hundred: Refile.attachment_url(object, :image, :fit, 100, 100)}
    image_array << {two_fifty: Refile.attachment_url(object, :image, :fit, 250, 250)}
    image_array << {five_hundred: Refile.attachment_url(object, :image, :fit, 500, 500)}
    image_array << {one_thousand: Refile.attachment_url(object, :image, :fit, 1000, 1000)}
    image_array << {fifty_profile: Refile.attachment_url(object, :image, :limit, 50, 50)}
    image_array
  end
end
