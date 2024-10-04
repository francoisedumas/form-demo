class Book < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :author, presence: true

  enum :category, %i(fiction fantaisy science police)
end
