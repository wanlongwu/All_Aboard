class User < ApplicationRecord
validates :name, uniqueness: true, presence: true
# validates_attachment :avatar, content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }
has_many :bookings
has_many :boats
has_attached_file :avatar

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

end
