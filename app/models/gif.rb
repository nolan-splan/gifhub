class Gif < ApplicationRecord
  belongs_to :user, optional: true
  validates :name, presence: true,
                   length: {
                     minimum: 5,
                     maximum: 25
                    }
end
