class User < ApplicationRecord
validates :name, uniqueness: true, presence: true

has_many :bookings, dependent: :destroy
has_many :boats, dependent: :destroy

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

end
