class Profile < ApplicationRecord
  belongs_to :user
  has_many :photos

  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: ""
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

  has_attached_file :background, styles: { large: "1920x1250>", med: "500x400>" }, default_url: ""
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

end
