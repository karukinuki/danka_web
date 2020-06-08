class Danka < ApplicationRecord
  has_many :pasts, dependent: :destroy
  validates :name, presence: true
end
