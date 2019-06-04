# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  user_name  :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ApplicationRecord
  validates :user_name, presence: true, uniqueness: true

  has_many :artworks
    foreign_key: :artist_id,
    class_name: :Artwork

  has_many :viewed_artworks,
    

end
