class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  has_many :reviews, dependent: :destroy
  validates :name, presence: true, uniqueness: true

  include PgSearch
  pg_search_scope :global_search,
    against: [ :name ],
    associated_against: {
      ingredients: [ :name ]
    },
    using: {
      tsearch: { prefix: true }
    }

  mount_uploader :photo, PhotoUploader
end
