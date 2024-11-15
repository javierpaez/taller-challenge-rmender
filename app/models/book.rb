class Book < ApplicationRecord

  validates :author, :title, :publication_date, :rating, presence: true
  validates :rating, numericality: true

  enum :status, [:available, :checked_out, :reserved], default: :available

end
