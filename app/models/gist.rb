class Gist < ApplicationRecord
  has_many :comments
  validates :src, presence: true, length: { minimum: 8, maximum: 256 }
end
