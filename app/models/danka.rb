class Danka < ApplicationRecord
  has_many :pasts, dependent: :destroy
end
