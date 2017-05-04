class Post < ApplicationRecord
  #Checks that post has image
  validates :image, presence: true

  # paperclip methods
  has_attached_file :image, styles: { :medium => "640x" }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
