class Boat < ApplicationRecord
validates :name, uniqueness: true, presence: true

belongs_to :user
has_many :bookings, dependent: :destroy


end
