class Gist < ApplicationRecord
  validates :src, presence: true, length: { minimum: 8, maximum: 2048 }
end
