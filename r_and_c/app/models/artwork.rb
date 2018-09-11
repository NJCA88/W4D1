class Artwork < ApplicationRecord
  validates [:title, :artist_id], uniqueness: true
end
