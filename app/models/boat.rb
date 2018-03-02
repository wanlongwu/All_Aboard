class Boat < ApplicationRecord
validates :name, uniqueness: true, presence: true
validates :photo, presence: true

belongs_to :user
has_many :bookings

geocoded_by :location
after_validation :geocode, if: :will_save_change_to_location?

mount_uploader :photo, PhotoUploader

end
