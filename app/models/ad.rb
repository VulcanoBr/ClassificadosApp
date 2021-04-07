class Ad < ApplicationRecord
  belongs_to :user

  validates :title, :description, :price, presence: true

end
