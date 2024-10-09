# frozen_string_literal: true

class Book < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :author, presence: true

  enum :category, { fiction: 0, fantaisy: 1, science: 2, police: 3 }
end
